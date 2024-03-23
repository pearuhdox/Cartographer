
function #minecraft:bbl/equips/mainhand

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.mainhand.tag.red_text[{id:"time_is_money"}].lvl
#scoreboard players operation @s req.red_text.time_is_money += $stat_calc req.master
