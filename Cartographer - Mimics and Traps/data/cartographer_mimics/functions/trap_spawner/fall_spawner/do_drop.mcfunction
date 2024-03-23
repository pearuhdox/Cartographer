playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 0.8
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 0.6
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 1

execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function cartographer_core:helper/falling_block_transform/master_fall_branch

#function cartographer_mimics:trap_spawner/fall_spawner/spread

#execute on passengers run kill @s
#kill @s