
function #minecraft:bbl/equips/boots

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.boots.tag.red_text[{id:"snow_angel"}].lvl
#scoreboard players operation @s req.red_text.snow_angel += $stat_calc req.master
