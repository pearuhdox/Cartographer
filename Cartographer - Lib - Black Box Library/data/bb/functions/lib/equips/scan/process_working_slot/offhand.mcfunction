
function #minecraft:bbl/equips/offhand

#execute store result score $stat_calc req.master run data get storage req:equips sudo_root.player_inventory.offhand.tag.red_text[{id:"for_our_cause"}].lvl
#scoreboard players operation @s req.red_text.for_our_cause += $stat_calc req.master
