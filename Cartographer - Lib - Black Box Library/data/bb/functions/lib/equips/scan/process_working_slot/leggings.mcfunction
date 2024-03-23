
function #minecraft:bbl/equips/leggings

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.leggings.tag.red_text[{id:"wish_upon_a_star"}].lvl
#scoreboard players operation @s req.red_text.wish_upon_a_star += $stat_calc req.master
