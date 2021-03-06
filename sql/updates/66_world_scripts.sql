update instance_template set script = 'instance_sunwell_plateau' where map = 580;
UPDATE creature_template SET ScriptName = 'boss_brutallus' WHERE entry = 24882;
UPDATE `creature_template` SET `ScriptName` = 'boss_felmyst' WHERE `entry` = 25038;
UPDATE `creature_template` SET `ScriptName` = 'mob_felmyst_vapor' WHERE `entry` = 25265;
UPDATE `creature_template` SET `ScriptName` = 'mob_felmyst_trail' WHERE `entry` = 25267;
update creature_template set scriptname = 'boss_sacrolash' where entry = 25165;
update creature_template set scriptname = 'boss_alythess' where entry = 25166;
update creature_template set scriptname = 'mob_shadow_image' where entry = 25214;
REPLACE INTO `gameobject_template` VALUES (187366, 6, 4251, 'Blaze', '', 14, 0, 1, 0, 73, 2, 45246, 0, 1, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET faction_H = 14, faction_A = 14, minlevel = 73, maxlevel = 73,rank = 3, flags = 33554434, flag1 = 0 WHERE entry = 25214;
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70',`faction_A` = '14', `faction_H` = '14' WHERE `entry` in (25265,25267,25268);
UPDATE `creature_template` SET `mindmg` = '1500', `maxdmg` = '2500', `minhealth` = '40000', `maxhealth` = '40000', `baseattacktime` = '2000' WHERE `entry` = 25268;
DELETE FROM `spell_script_target` WHERE `entry` in (44885,45388,45389,46350,45714);
INSERT INTO `spell_script_target` VALUES ('45388', '1', '25038');
INSERT INTO `spell_script_target` VALUES ('45389', '1', '25265');
INSERT INTO `spell_script_target` VALUES ('44885', '1', '25160');
INSERT INTO `spell_script_target` VALUES ('46350', '1', '25160');
INSERT INTO `spell_script_target` VALUES ('45714', '1', '25038');