
scoreboard players operation $saved_pose dies.object.display.pose = @s dies.object.display.pose
scoreboard players operation $saved_pose dies.object.display.rotation = @s dies.object.display.rotation
scoreboard players operation $saved_pose dies.object.display.size = @s dies.object.display.size

data modify storage cartographer_loot_additions:pedestal_position data set value {}
data modify storage cartographer_loot_additions:pedestal_position data.value set from entity @s Pos

execute as @p at @s run function cartographer_loot_additions:budding/pedestal/check

execute if score $test_find ca.loot_var matches 1 run function cartographer_loot_additions:budding/give_item
execute if score $test_find ca.loot_var matches 0 run function cartographer_loot_additions:budding/refuse_item

execute on passengers if entity @s[type=interaction] run kill @s
kill @s

execute summon minecraft:item_display as @s at @s run function cartographer_loot_additions:budding/summoned_display