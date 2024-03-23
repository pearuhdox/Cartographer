
#Failsafe
execute unless score @s bbl.gamemode_change.present matches -99999..99999 store result score @s bbl.gamemode_change.present run data get entity @s playerGameType

scoreboard players operation @s bbl.gamemode_change.past = @s bbl.gamemode_change.present
execute store result score @s bbl.gamemode_change.present run data get entity @s playerGameType
execute unless score @s bbl.gamemode_change.past = @s bbl.gamemode_change.present run function bb:lib/tag_functions/gamemode_changed/switched
