
execute store result score @s bbl.gamemode_change.old_gamemode run data get entity @s previousPlayerGameType

execute if entity @s[gamemode=survival] run function #minecraft:bbl/gamemode_changed/survival
execute if entity @s[gamemode=creative] run function #minecraft:bbl/gamemode_changed/creative
execute if entity @s[gamemode=adventure] run function #minecraft:bbl/gamemode_changed/adventure
execute if entity @s[gamemode=spectator] run function #minecraft:bbl/gamemode_changed/spectator
