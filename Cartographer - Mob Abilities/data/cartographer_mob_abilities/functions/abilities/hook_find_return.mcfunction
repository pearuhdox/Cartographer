tag @s remove bool_check

execute as @e[type=#cartographer_core:hostile,tag=hookshot,limit=1,sort=random,tag=!hook_checked] at @s run tag @s add hook_cur_check

execute if score @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] hook_id = @s hook_id run tp @s ~ ~ ~ facing entity @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] feet

execute unless score @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] hook_id = @s hook_id run tag @s add bool_check
execute unless score @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] hook_id = @s hook_id run tag @s add hook_checked
execute unless score @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] hook_id = @s hook_id run tag @e[type=#cartographer_core:hostile,tag=hook_cur_check,sort=nearest,limit=1] remove hook_cur_check

execute if entity @s[tag=bool_check] run function cartographer_mob_abilities:abilities/hook_find_return