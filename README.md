![Logo](https://i.ibb.co/d6FnmGv/tanoalife-1.jpg)

[![badgeGitHub](https://img.shields.io/github/stars/Lyeed/Framework_Tanoa_Life.svg?style=social)](https://github.com/Lyeed/Framework_Tanoa_Life/stargazers) [![badgeGitHub](https://img.shields.io/github/followers/Lyeed.svg?label=Follow&style=social)](https://github.com/Lyeed) [![badgeGitHub](https://img.shields.io/github/forks/Lyeed/Framework_Tanoa_Life.svg?style=social)](https://github.com/Lyeed/Framework_Tanoa_Life)

# Tanoa Life

This repository is **multiplayer total modification for ARMA3 game**.

It was developped in 2017 for a french server called Alysia. I decided to share my work to the ARMA series community to offer people a proper roleplay mission. The mission is coded in english but user's messages are hard coded in french.

If you wish to contribute in your way, please feel free to contact me or to create a pull request.

The framework is **highly configurable** with the use of many configuration files in the mission which can custom the gameplay as much as you like.

## Features
- Dynamic markers system
- Character creation form during first connection
- Company system allowing your players to create their own company where they desire
- Exchanges items between players via the trade menu
- A complete modpack containing framework's assets  and completing the immersion
- Licenses
- A fully functionnable phone mimicing a real phone dial
- Money laundering
- Rebel levels/licenses
- Different fuel types and compatibility
- Housing system with a vast variety of possible buy
- Complete medical system with blood, bleeding and a coma state
- Narcotic production in laboratories bought, place and built by players. These can be destroyed by the law forces
- A tablet containing applications such as a store, your phone, your bank account, the market and many other
- Blueprints allowing you to build unique weapons and items
- Ingame administration menu allowing you to moderate your server
- Many other...

## Architechture
`Tanoa-Life.Tanoa` - Arma 3 multiplayer mission  
`Tanoa-Server` - Arma 3 server addon  
`database.sql` - SQL database file. Create the database  
`Server.ArmA3Profile` - Arma 3 server profile you can use to improve ingame immersion   
`Somes PSD` - Photoshop files you can custom such as the GPS   
`Teamspeak-Logos` - Teamspeak icons   

## Requirements

### Mandatory
- Arma 3 server
- Database
- [extDB3](https://github.com/SteezCram/extDB3)
- [extLOG](https://github.com/Torndeco/extLOG)
- [Arma 3 framework addons](https://mega.nz/#!GEkACATR!iDuiZAuI2xuLEIZHk32F4YGHw9neC5gBjjClZFPUHq8)

### Useful links
- Server Start-up/Reboot management: [Batch file](https://www.altisliferpg.com/topic/2212-basic-bat-server-start)
- Database: [MySQL Server](https://dev.mysql.com/downloads/mysql)
- SQL Administration Tool: [HeidiSQL](https://www.heidisql.com/download.php)
- Text Editor: [Sublime Text 3](https://www.sublimetext.com/3)
- Command-line steam version: [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
- Arma 3 server profile: [Bohemia Wiki](https://community.bistudio.com/wiki/server.armaprofile)

## Configuration
### Server side [-Link-](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Server/configs/Config_Server.hpp)
### Staff members [-Link-](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/configs/GameConfigs/Config_Staff.hpp)
### TaskForceRadio informations
##### initPlayerLocal [-Link-](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/initPlayerLocal.sqf)
- Line 88 : Replace YOUR TEAMSPEAK NAME by your TeamSpeak's server name.  
`waitUntil {(["Lyeed Tanoa Life Teamspeak", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)};`

- Line 93 : Your channel name. Default: TaskForceRadio

##### fn_init_loops.sqf [-Link-](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/core/Inits/fn_init_loops.sqf)
- Line 140: Specify all channels that players are allowed to visit while connected.  
`if (!((call TFAR_fnc_getTeamSpeakChannelName) in ["TaskForceRadio","MyNewChannel"])) then`

- Line 152 and 178: Replace YOUR TEAMSPEAK NAME by your TeamSpeak's server name.  
`if (!(["Lyeed Tanoa Life Teamspeak", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)) then`

### Database
- Execute the script [database](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/database.sql) on your SQL server.
- Modify ExtDB configuration file according to your needs:
```
[tanoa]//<--------------- IMPORTANT
IP = 127.0.0.1//<-------- CHANGE IF YOUR DATABASE IS NOT LOCAL
Port = 3306//<----------- DEFAULT MySQL PORT
Username = root//<------- DATABASE ACCOUNT WITH PRIVILEGES TO USE
Password =  *******//<--- DATABASE ACCOUNT PASSWORD. CHANGE IT
Database = tanoa//<------ IMPORTANT
```

## Author
[Lyeed](https://github.com/Lyeed)

## License
For a human-readable version of the [project's license](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/LICENSE.md), see http://creativecommons.org/licenses/by-nc-nd/4.0/

## Bugs report
Please open an issue for any encountered bug, I will do my best to correct it.

If you are not familiar with the GitHub's issue system, please refer to [the documentation](https://guides.github.com/features/issues/)

## Q&A
*Q: Where do I modify the ingame configuration such as items, prices or vehicles ?*  
A: You can edit all the configuration files in the [GameConfig folder](https://github.com/Lyeed/Framework_Tanoa_Life/blob/master/Tanoa-Life.Tanoa/configs/GameConfigs)

*Q: Where do I find processes ?*  
A: Most of the resources are linked to a specific company type. Each type have its own building and processes. Companies must be built by players.

*Q: Where do I find processes ?*  
A: Most of the resources are linked to a specific company type. Each type have its own building and processes. Companies must be built by players.

*Q: How to create a company ?* 
A: In order to create a company, the player in charge of registering companies (the one with the "coop_agri" license) has to press the interaction button (windows by default) while targeting the new CEO. He will have an option in his interactions menu to create a company. He has to specify the company type and name. When pressing enter a construction block will appear and players will be able to gather and put materials in it. If you want to skip the construction part as admin you can while targeting the construction block, go to the admin app and press "construire" (build) If you don't have access to the admin app you can register your UID and permissions here.

*Q: Can I change the framework map ?* 
A: Yes you can. You are going to have to import the mission.sqm to a different map and to modify the server game config positions.

**[In writing]**

## Pictures
![Tablet_1](https://cdn.discordapp.com/attachments/434398524269002784/435855164650553354/20180415121249_1.jpg)
![Tablet_2](https://i.imgur.com/2AVLsTF.jpg)
![Tablet](https://cdn.discordapp.com/attachments/434398524269002784/435855519756845056/20180417193330_1.jpg)
![Welcome](https://images-ext-2.discordapp.net/external/4BJgWyhu8Q1qYlNMlNiYtaZqZrPVWzWMh2Mcby_uPJw/https/i.imgur.com/dOSvgx5h.jpg)
![Inscription](https://steamuserimages-a.akamaihd.net/ugc/2434635842564505288/6BEE68FB5B8363C0DFC78EFB99648FD8B2954A50/)
![Company](https://i.imgur.com/k6WJiCI.jpg)
![Death](https://i.imgur.com/gNo7n4J.jpg)
![Stock](https://i.imgur.com/yYMOMdr.jpg)
![Military](https://i.imgur.com/ylNlNsn.jpg)
![Massage](https://i.imgur.com/0qUKHuG.jpg)
![Inventory](https://i.imgur.com/K40l9p3.jpg)
