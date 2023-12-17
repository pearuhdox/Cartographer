data modify entity @s data.Item set from storage cartographer_core:pot_marker data.Item
data modify entity @s Tags set from storage cartographer_core:pot_marker data.EntityTags
data modify entity @s data.id set from storage cartographer_core:pot_marker data.id
data modify entity @s data.Owner set from storage cartographer_core:pot_marker data.Owner


execute if entity @s[nbt={data:{id:"minecraft:lingering_potion"}}] run tag @s add ca.pot_mark_linger
tag @s add ca.pot_marker

scoreboard players operation @s ca.player_id = $player_id ca.registry

execute if score $custom_enchantments ca.installed matches 1.. run function cartographer_custom_enchantments:enchant_calls/thrown_potion/when_ranged_attack_made