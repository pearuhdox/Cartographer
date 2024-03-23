
function #minecraft:bbl/equips/helmet

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.helmet.tag.red_text[{id:"creativity"}].lvl
#scoreboard players operation @s req.red_text.creativity += $stat_calc req.master
