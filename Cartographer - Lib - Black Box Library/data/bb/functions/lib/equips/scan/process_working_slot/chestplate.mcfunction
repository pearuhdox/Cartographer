
function #minecraft:bbl/equips/chestplate

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.chestplate.tag.red_text[{id:"love_thyself"}].lvl
#scoreboard players operation @s req.red_text.love_thyself += $stat_calc req.master
