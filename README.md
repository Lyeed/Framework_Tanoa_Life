# Framework Tanoa Life
This framework is a total modification for ArmA3 game.

## What is this repository ?
It's a **merged** version more developer friendly

Originals :
- https://github.com/Lyeed/Life-Server
- https://github.com/Lyeed/Tanoa-Life

## Database
- Execute the script database.sql on your database.
- Modify Extdb config file :

		[tanoa]
		Type = MySQL
		Name = tanoa

		Username = ********
		Password = ********

		IP = 127.0.0.1
		Port = 3306
	
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
4. Server Addons Configurations [Link](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Server/fn_initServer.sqf)
	- Line 123 : Add in the array your server's addons cfgpatches 
	
	**Exemple :**
	``
		if (!(_pbo in ["TanoaServer","asm","myNewAddon"])) then {
	``
	
	:warning: You must add the addon's cfgpatch and not the addon's folder name. Check out this information in your addon's config file

## Author
* **Lyeed** - [Lyeed](https://github.com/Lyeed)

## License
Read [LICENSE.md](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/LICENSE.md)

## Bugs report
Please open an issue for any encountered bug, I will do my best to correct it.

## Pictures
![Tablet](https://cdn.discordapp.com/attachments/434398524269002784/435855164650553354/20180415121249_1.jpg)
![Tablet](https://cdn.discordapp.com/attachments/434398524269002784/435855519756845056/20180417193330_1.jpg)
![Welcome](https://images-ext-2.discordapp.net/external/4BJgWyhu8Q1qYlNMlNiYtaZqZrPVWzWMh2Mcby_uPJw/https/i.imgur.com/dOSvgx5h.jpg)
