delete from mangos_string where entry>716 and entry<750;
INSERT INTO mangos_string VALUES
(717,'Alliance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(718,'Horde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(719,'%s was destroyed by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(720,'The %s is under attack! If left unchecked, the %s will destroy it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(721,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(722,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(723,'The %s was taken by the %s!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(724,'The %s is under attack! If left unchecked, the %s will capture it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(725,'The %s has taken the %s! Its supplies will now be used for reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(726,'Irondeep Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(727,'Coldtooth Mine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(728,'Stormpike Aid Station',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(729,'Dun Baldar South Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(730,'Dun Baldar North Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(731,'Stormpike Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(732,'Icewing Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(733,'Stonehearth Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(734,'Stonehearth Bunker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(735,'Snowfall Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(736,'Iceblood Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(737,'Iceblood Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(738,'Tower Point',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(739,'Frostwolf Graveyard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(740,'East Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(741,'West Frostwolf Tower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(742,'Frostwolf Relief Hut',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(743,'The Battle for Alterac Valley begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(744,'The Battle for Alterac Valley begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(745,'The Battle for Alterac Valley has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(746,'The Alliance Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(747,'The Horde Team is running out of reinforcements!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(748,'The Frostwolf General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(749,'The Stormpike General is Dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
;

UPDATE mangos_string SET content_loc3='Allianz' WHERE entry=717;
UPDATE mangos_string SET content_loc3='Horde' WHERE entry=718;

UPDATE mangos_string SET content_loc3='%s wurde von der %s zerstört!' WHERE entry=719;

UPDATE mangos_string SET content_loc3='%s wird angegriffen! Wenn er unbewacht bleibt, wird die %s ihn zerstören!' WHERE entry=720;
-- Wenn _sie_ unbewacht bleibt wird allianz _sie_ TODO: don't store towers and gravenames, store complete strings with the names inside it, else i don't know how to implement this feature

UPDATE mangos_string SET content_loc3='%s wurde von der %s erobert!' WHERE entry=721;
UPDATE mangos_string SET content_loc3='%s wurde von der %s erobert!' WHERE entry=722;
UPDATE mangos_string SET content_loc3='%s wurde von der %s erobert!' WHERE entry=723;

UPDATE mangos_string SET content_loc3='%s wird angegriffen! Wenn er unbewacht bleibt, wird die %s ihn erobern!' WHERE entry=724;
-- Wenn _sie_ unbewacht bleibt ... TODO...

UPDATE mangos_string SET content_loc3='Die %s hat die %s eingenommen! Die dort befindlichen Vorräte werden zur Verstärkung eingesetzt!' WHERE entry=725;

UPDATE mangos_string SET content_loc3='Eisenschachtmine' WHERE entry=726;
UPDATE mangos_string SET content_loc3='Eisbeißermine' WHERE entry=727;
UPDATE mangos_string SET content_loc3='Das Lazarett der Sturmlanzen' WHERE entry=728;
UPDATE mangos_string SET content_loc3='Der Südbunker von Dun Baldar' WHERE entry=729;
UPDATE mangos_string SET content_loc3='Der Nordbunker von Dun Baldar' WHERE entry=730;
UPDATE mangos_string SET content_loc3='Der Friedhof der Sturmlanzen' WHERE entry=731;
UPDATE mangos_string SET content_loc3='Der Eisschwingenbunker' WHERE entry=732;
UPDATE mangos_string SET content_loc3='Der Steinbruchfriedhof' WHERE entry=733;
UPDATE mangos_string SET content_loc3='Der Steinbruchbunker' WHERE entry=734;
UPDATE mangos_string SET content_loc3='Der Schneewehenfriedhof' WHERE entry=735;
UPDATE mangos_string SET content_loc3='Der Eisblutturm' WHERE entry=736;
UPDATE mangos_string SET content_loc3='Der Eisblutfriedhof' WHERE entry=737;
UPDATE mangos_string SET content_loc3='Die Turmstellung' WHERE entry=738;
UPDATE mangos_string SET content_loc3='Der Friedhof der Frostwölfe' WHERE entry=739;
UPDATE mangos_string SET content_loc3='Der östliche Frostwolfturm' WHERE entry=740;
UPDATE mangos_string SET content_loc3='Der westliche Frostwolfturm' WHERE entry=741;
UPDATE mangos_string SET content_loc3='Die Heilerhütte der Frostwölfe' WHERE entry=742;
UPDATE mangos_string SET content_loc3='Der Kampf um das Alteractal beginnt in 1 Minute.' WHERE entry=743;
UPDATE mangos_string SET content_loc3='Der Kampf um das Alteractal beginnt in 30 Sekunden.' WHERE entry=744;
UPDATE mangos_string SET content_loc3='Der Kampf um das Alteractal hat begonnen!' WHERE entry=745;
UPDATE mangos_string SET content_loc3='Die Allianz hat nurnoch wenige Verstärkungspunkte' WHERE entry=746; -- TODO find right msg
UPDATE mangos_string SET content_loc3='Die Horde hat nurnoch wenige Verstärkungspunkte' WHERE entry=747; -- TODO same here
UPDATE mangos_string SET content_loc3='Der General der Allianz ist tot!' WHERE entry=748;
UPDATE mangos_string SET content_loc3='Der General der Horde ist tot!' WHERE entry=749;


-- CHAT_MSG_BG_SYSTEM_ALLIANCE', 'txt': '$N hat den Schneewehenfriedhof besetzt! Wenn niemand eingreift, erlangt die Allianz die Kontrolle \xc3\xbcber ihn
