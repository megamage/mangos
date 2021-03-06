/* Copyright (C) 2006 - 2008 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

/* ScriptData
SDName: Instance_Old_Hillsbrad
SD%Complete: 60
SDComment: If thrall escort fail, all parts will reset. In future, save sub-parts and continue from last known.
SDCategory: Caverns of Time, Old Hillsbrad Foothills
EndScriptData */

/*
-- UPDATE `gameobject_template` SET `ScriptName`='go_barrel_old_hillsbrad' WHERE `entry`=182589;
*/

#include "precompiled.h"
#include "def_old_hillsbrad.h"

#define ENCOUNTERS      6

#define THRALL_ENTRY    17876
#define TARETHA_ENTRY   18887

struct TRINITY_DLL_DECL instance_old_hillsbrad : public ScriptedInstance
{
    instance_old_hillsbrad(Map *Map) : ScriptedInstance(Map) {Initialize();};

    uint32 Encounter[ENCOUNTERS];
    uint32 mBarrelCount;
    uint32 mThrallEventCount;

    uint64 ThrallGUID;
    uint64 TarethaGUID;

    void Initialize()
    {
        mBarrelCount        = 0;
        mThrallEventCount   = 0;
        ThrallGUID          = 0;
        TarethaGUID         = 0;

        for(uint8 i = 0; i < ENCOUNTERS; i++)
            Encounter[i] = NOT_STARTED;
    }

    void OnCreatureCreate(Creature *creature, uint32 creature_entry)
    {
        switch(creature_entry)
        {
            case THRALL_ENTRY:
                ThrallGUID = creature->GetGUID();
                break;
            case TARETHA_ENTRY:
                TarethaGUID = creature->GetGUID();
                break;
        }
    }

    void SetData(uint32 type, uint32 data)
    {
        switch(type)
        {
            case TYPE_BARREL_DIVERSION:
            {
                if( mBarrelCount < 5 )
                {
                    mBarrelCount++;
                    debug_log("SD2: go_barrel_old_hillsbrad count %u",mBarrelCount);
                }
                else if( mBarrelCount >= 5 )
                    Encounter[0] = DONE;
                break;
            }
            case TYPE_THRALL_EVENT:
            {
                if( data == FAIL )
                {
                    if( mThrallEventCount <= 20 )
                    {
                        mThrallEventCount++;
                        Encounter[1] = NOT_STARTED;
                        debug_log("SD2: Thrall event failed %u times. Resetting all sub-events.",mThrallEventCount);
                        Encounter[2] = NOT_STARTED;
                        Encounter[3] = NOT_STARTED;
                        Encounter[4] = NOT_STARTED;
                        Encounter[5] = NOT_STARTED;
                    }
                    else if( mThrallEventCount > 20 )
                    {
                        Encounter[1] = data;
                        Encounter[2] = data;
                        Encounter[3] = data;
                        Encounter[4] = data;
                        Encounter[5] = data;
                        debug_log("SD2: Thrall event failed %u times. Reset instance required.",mThrallEventCount);
                    }
                }
                else
                    Encounter[1] = data;
                debug_log("SD2: Thrall escort event adjusted to data %u.",data);
                break;
            }
            case TYPE_THRALL_PART1:
                Encounter[2] = data;
                debug_log("SD2: Thrall event part I adjusted to data %u.",data);
                break;
            case TYPE_THRALL_PART2:
                Encounter[3] = data;
                debug_log("SD2: Thrall event part II adjusted to data %u.",data);
                break;
            case TYPE_THRALL_PART3:
                Encounter[4] = data;
                debug_log("SD2: Thrall event part III adjusted to data %u.",data);
                break;
            case TYPE_THRALL_PART4:
                Encounter[5] = data;
                debug_log("SD2: Thrall event part IV adjusted to data %u.",data);
                break;
        }
    }

    uint32 GetData(uint32 data)
    {
        switch(data)
        {
            case TYPE_BARREL_DIVERSION:
                return Encounter[0];
            case TYPE_THRALL_EVENT:
                return Encounter[1];
            case TYPE_THRALL_PART1:
                return Encounter[2];
            case TYPE_THRALL_PART2:
                return Encounter[3];
            case TYPE_THRALL_PART3:
                return Encounter[4];
            case TYPE_THRALL_PART4:
                return Encounter[5];
        }
        return 0;
    }

    uint64 GetData64(uint32 data)
    {
        switch(data)
        {
            case DATA_THRALL:
                return ThrallGUID;
            case DATA_TARETHA:
                return TarethaGUID;
        }
        return 0;
    }
};
InstanceData* GetInstanceData_instance_old_hillsbrad(Map* map)
{
    return new instance_old_hillsbrad(map);
}

void AddSC_instance_old_hillsbrad()
{
    Script *newscript;
    newscript = new Script;
    newscript->Name = "instance_old_hillsbrad";
    newscript->GetInstanceData = GetInstanceData_instance_old_hillsbrad;
    newscript->RegisterSelf();
}
