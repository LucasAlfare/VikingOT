



-- Data directory location
datadir = "data/"

-- Map location
map = "data/world/viking.otbm"

-- Map file type.
-- options: OTBM for binary map, XML for OTX map
mapkind = "OTBM"

-- Not used
mapstore = "N/A"

-- Not used
housestore = "N/A"

-- Not used
banIdentifier = "N/A"

-- Server name
servername = "Custom"

-- Server host location
location = "USA"

-- Server host IP (IP can be found at www.whatismyip.com)
ip = "127.0.0.1"

-- Server port (Default = 7171)
port = "7171"

-- Server home page
url = ""

-- Serr owner name
ownername = ""

-- Server owner email
owneremail = ""

-- World type. (pvp/no-pvp/pvp-enforced)
worldtype = "pvp"

-- Exhaust time for aggressive spells. (1000 = 1 second)
exhausted = 500

-- Exhaust time for non-aggressive spells. (1000 = 1 second)
exhaustedheal = 300

-- How much time to add for already exhausted players? (1000 = 1 second)
exhaustedadd = 0

-- How long for pz unlock? (1000 = 1 second)
pzlocked = 60*1000

-- Time to pay house rent. (daily/weekly/monthly)
houserentperiod = "weekly"

-- Message of the day.
motd = "Seja bem vindo!"
motdnum = "1"

-- Login message.
loginmsg = "Bem Vindos! www.viking-server.com"

-- Incorrect logins until IP block.
-- set to 0 to disable
logintries = 3

-- How long before retry.
retrytimeout = 60*1000

-- Minutes of IP block.
logintimeout = 10

-- Allow multiple logins of same character? (0 = No, 1 = Yes)
allowclones = 0

-- Maximum players.
maxplayers = "1000"

-- SQL type
-- options: mysql, sqlite
sql_type = "mysql"

--- MySQL part (Ignore if you are using SQLite)
sql_host = "localhost"
sql_user = "root"
sql_pass = "senha"
sql_db   = "database"

--- SQLite part (Ignore if you are using MySQL)
sqlite_db = "db.s3db"

-------------------------------------------------------------------------------------------------
---------------------------- Evolutions Basic Configuration ----------------------------
-------------------------------------------------------------------------------------------------

-- World name (Shows in character list)
worldname = "Viking"

-- Minutes between server saves.
autosave = 15

-- Cap system enabled? (yes/no)
capsystem = "yes"

-- Maximum time to idle before being kicked. (Minutes)
kicktime = 15

-- Maximum summons per person.
maxsummons = 0

-- Maximum depot items.
maxdepotitems = 1000

-- Do players need to learn spells? (yes/no)
learnspells = "no"

-- Should everyone get free premium? (yes/no)
freepremium = "no"

-- Limited ammunition? (yes/no)
removeammunation = "no"

-- Limited rune charges? (yes/no)
removerunecharges = "yes"

-- Hotkeys enabled? (yes/no)
itemhotkeys = "yes"

-- Use runes through battle screen in PvP? (yes/no)
battlewindowplayers = "yes"

-- Account Manager enabled? (yes/no)
accountmanager = "no"

-- Summons follow master?
summonsfollow = "no"

-- Allow outfit change?
outfitchange = "yes"

-- Damage players with same feet?
feetdamage = "yes"

-- Guild system location. (ingame/online) ~REQUIRES LATEST SWELIA AAC!~
guildsystem = "ingame"

-------------------------------------------------------------------------------------
----------------------------------- Multipliers -----------------------------------
-------------------------------------------------------------------------------------

-- Experience rate. (Monsters)
expmul = 20

-- Experience rate. (Players)
expmulpvp = 1

-- Loot rate.
lootmul = 5

-- Skill multiplier. (Another skill multiplier in vocations.xml)
skillmul = 100

-- Mana multiplier. (Another mana multiplier in vocations.xml)
manamul = 65

-- How many monsters spawn at a time in any given spawn area? (Lower number = slower spawning, Higher number = faster spawning)
spawnmul = 1

-- Price per SQM when buying a house.
houseprice = 1000

-- Required level to buy houses.
houselevel = 150

-- Maximum death entries per player.
maxdeathentries = 10

-- Number of messages before mute.
messagebuffer = 15

-- Exhaust between actions. (1000 = 1 second)
minactioninterval = 300

-- PvP off for people under this level.
protectionlimit = 0

-- Critical hit chance and damage increase. (Percent chance, percent increase)
criticaldamage = {"0", "0"}

---------------------------------------------------------------------------------------
-------------------------- Skull System configuration -------------------------
---------------------------------------------------------------------------------------

-- Time to lose a white skull after a kill. (1 = 1 minute)
whitetime = 2

-- Time to lose one unjust kill. (1 = 1 minute)
fragtime = 360

-- How many unjusts before ban? (1 = 1 frag)
banunjust = 5

-- How many unjusts for red skull?
redunjust = 3

-- How long player is banned after unjust limit. (1 = 1 hour)
bantime = 48

--------------------------------------------------------------------------------------
------------------------------- GM access rights --------------------------------
--------------------------------------------------------------------------------------

-- Required access to get in all houses.
accesshouse = 5

-- Required access to enter server when closed.
accessenter = 1

-- Required access for god mode. (Ignored by monsters, no hp/mana loss, infinite cap)
accessprotect = 3

-- Required access to broadcast and talk in colors.
accesstalk = 3

-- Required access to move items from unaccessible places.
accessremote = 5

-- Required access to see the ID and position of examined items.
accesslook = 3