# Datapack  : Black Box Archive
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 4/17/22
# Name      : Install
# Use       : Installs various dependant scores aswell as the forceloaded chunk.

#Forceload chunk.
forceload add 4206857 4206872

#Add scoreboards
#\Score Storage Location
scoreboard objectives add bbl.storage dummy
#\Constants
scoreboard objectives add bbl.constant dummy
#\Relog score
scoreboard objectives add bbl.relog minecraft.custom:minecraft.leave_game
#\RNG
scoreboard objectives add bbl.rng dummy
#\Y checker
#\Precise
scoreboard objectives add bbl.y_past.pre dummy
#\Block
scoreboard objectives add bbl.y_past.bck dummy
#\Item effects
#\Interaction Blocker
scoreboard objectives add bbl.ie.block dummy
#\Minus xp
#\xp
scoreboard objectives add bbl.xp dummy
#\success
scoreboard objectives add bbl.xp.success dummy
#\Relco
scoreboard objectives add bbl.relco.X1 dummy "RelCo X Coordinate 1"
scoreboard objectives add bbl.relco.Y1 dummy "RelCo Y Coordinate 1"
scoreboard objectives add bbl.relco.Z1 dummy "RelCo Z Coordinate 1"

scoreboard objectives add bbl.relco.X2 dummy "RelCo X Coordinate 2"
scoreboard objectives add bbl.relco.Y2 dummy "RelCo Y Coordinate 2"
scoreboard objectives add bbl.relco.Z2 dummy "RelCo Z Coordinate 2"

scoreboard objectives add bbl.relco.XD dummy "RelCo Relative X Coordinate"
scoreboard objectives add bbl.relco.YD dummy "RelCo Relative Y Coordinate"
scoreboard objectives add bbl.relco.ZD dummy "RelCo Relative Z Coordinate"
#\ID scoreboard
scoreboard objectives add bbl.id dummy
#\Clocks
scoreboard objectives add bbl.clock dummy
#\Slot changes
scoreboard objectives add bbl.slot_change.past dummy
scoreboard objectives add bbl.slot_change.present dummy
#\Gamemode changes
scoreboard objectives add bbl.gamemode_change.past dummy
scoreboard objectives add bbl.gamemode_change.present dummy
scoreboard objectives add bbl.gamemode_change.old_gamemode dummy

#Next ID init
execute unless score $next_id bbl.storage matches -99999..99999 run scoreboard players set $next_id bbl.storage 1

#Set constants
scoreboard players set $-1 bbl.constant -1
scoreboard players set $1 bbl.constant 1
scoreboard players set $2 bbl.constant 2
scoreboard players set $3 bbl.constant 3
scoreboard players set $4 bbl.constant 4
scoreboard players set $5 bbl.constant 5
scoreboard players set $6 bbl.constant 6
scoreboard players set $7 bbl.constant 7
scoreboard players set $8 bbl.constant 8
scoreboard players set $9 bbl.constant 9
scoreboard players set $10 bbl.constant 10

scoreboard players set $15 bbl.constant 15
scoreboard players set $20 bbl.constant 20
scoreboard players set $25 bbl.constant 25
scoreboard players set $30 bbl.constant 30
scoreboard players set $33 bbl.constant 33
scoreboard players set $35 bbl.constant 35

scoreboard players set $50 bbl.constant 50
scoreboard players set $67 bbl.constant 67
scoreboard players set $68 bbl.constant 68
scoreboard players set $70 bbl.constant 70
scoreboard players set $75 bbl.constant 75
scoreboard players set $80 bbl.constant 80
scoreboard players set $90 bbl.constant 90

scoreboard players set $100 bbl.constant 100
scoreboard players set $110 bbl.constant 110
scoreboard players set $115 bbl.constant 115
scoreboard players set $200 bbl.constant 200
scoreboard players set $300 bbl.constant 300
scoreboard players set $600 bbl.constant 600

scoreboard players set $1000 bbl.constant 1000
scoreboard players set $1200 bbl.constant 1200

#No collide team
team add no_collide
team modify no_collide color white
team modify no_collide collisionRule never

#Full collide team
team add full_collide
team modify full_collide color white
team modify full_collide collisionRule always

#Colored teams
team add aqua
team modify aqua color aqua
team modify aqua collisionRule never

team add black
team modify black color black
team modify black collisionRule never

team add blue
team modify blue color blue
team modify blue collisionRule never

team add dark_aqua
team modify dark_aqua color dark_aqua
team modify dark_aqua collisionRule never

team add dark_blue
team modify dark_blue color dark_blue
team modify dark_blue collisionRule never

team add dark_gray
team modify dark_gray color dark_gray
team modify dark_gray collisionRule never

team add dark_green
team modify dark_green color dark_green
team modify dark_green collisionRule never

team add dark_purple
team modify dark_purple color dark_purple
team modify dark_purple collisionRule never

team add dark_red
team modify dark_red color dark_red
team modify dark_red collisionRule never

team add gold
team modify gold color gold
team modify gold collisionRule never

team add gray
team modify gray color gray
team modify gray collisionRule never

team add green
team modify green color green
team modify green collisionRule never

team add light_purple
team modify light_purple color light_purple
team modify light_purple collisionRule never
#pink*

team add red
team modify red color red
team modify red collisionRule never

team add white
team modify white color white
team modify white collisionRule never

team add yellow
team modify yellow color yellow
team modify yellow collisionRule never

#Forceload chunk
execute unless block 4206849 1 4206865 diamond_block run function bb:sys/build_chunk
#\Working shulker
execute unless block 4206862 1 4206865 black_shulker_box run setblock 4206862 1 4206865 black_shulker_box

