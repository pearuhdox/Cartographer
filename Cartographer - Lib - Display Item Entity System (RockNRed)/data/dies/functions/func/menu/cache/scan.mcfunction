
scoreboard players reset $cache.pose dies.master

function dies:func/menu/cache/reset_calc

execute store result score $cache.pose dies.master run scoreboard players get @s dies.object.display.pose
execute store result score $cache.item_type dies.master run scoreboard players get @s dies.object.item_type

execute if score $cache.pose dies.master matches 5 run scoreboard players set $cache.calc.can_size dies.master 0
