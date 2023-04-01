data modify entity @s data.Item set from storage cartographer_custom_statuses:pot_marker data.Item
data modify entity @s Tags set from storage cartographer_custom_statuses:pot_marker data.EntityTags
data modify entity @s data.id set from storage cartographer_custom_statuses:pot_marker data.id


execute if entity @s[nbt={data:{id:"minecraft:lingering_potion"}}] run tag @s add ca.pot_mark_linger
tag @s add ca.pot_marker