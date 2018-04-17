# Framework Tanoa Life
This framework is a total modification for ArmA3 game.

## What is this repository ?
It's a **merged** version more developer friendly

Originals :
- https://github.com/Lyeed/Life-Server
- https://github.com/Lyeed/Tanoa-Life

## Database
Execute database.sql file on your database.

Don't forget to configure ExtDB2 ini file

## Requirements
- extDB2 - https://github.com/AsYetUntitled/extDB2
- extLOG - https://github.com/Torndeco/extLOG
- Mods pack - https://mega.nz/#!GEkACATR!iDuiZAuI2xuLEIZHk32F4YGHw9neC5gBjjClZFPUHq8

## Importants files to modify
1. Server configuration [Link](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Server/configs/Config_Server.hpp)
2. Staff members [Link](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/configs/GameConfigs/Config_Staff.hpp)
3. TaskForceRadio server informations [Link](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/initPlayerLocal.sqf)
    - Line 88 : Remplace YOUR TEAMSPEAK NAME by your Teamspeak's name
    
    **Exemple :**
    ``
		waitUntil {(["Lyeed Tanoa Life Teamspeak", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)};
    ``
    - Line 93 : Your channel name. Default : TaskForceRadio

## Author
* **Lyeed** - [Lyeed](https://github.com/Lyeed)
