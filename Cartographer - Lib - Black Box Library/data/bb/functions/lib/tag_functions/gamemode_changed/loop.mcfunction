# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Gamemode Changed Loop
# Use       : Runs on loop as players to check when they change gamememodes.

#Failsafe
execute unless score @s bbl.gamemode_change.present matches -99999..99999 store result score @s bbl.gamemode_change.present run data get entity @s playerGameType

scoreboard players operation @s bbl.gamemode_change.past = @s bbl.gamemode_change.present
execute store result score @s bbl.gamemode_change.present run data get entity @s playerGameType
execute unless score @s bbl.gamemode_change.past = @s bbl.gamemode_change.present run function bb:lib/tag_functions/gamemode_changed/switched



