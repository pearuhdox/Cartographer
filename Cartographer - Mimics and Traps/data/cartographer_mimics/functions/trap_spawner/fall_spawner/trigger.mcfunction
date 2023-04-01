playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 0.8
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 0.6
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ 0.75 1

execute unless block ~ ~-0.5 ~ #cartographer_core:can_raycast if block ~ ~-1.5 ~ #cartographer_core:can_raycast run summon block_display ~ ~-0.5 ~ {Tags:["ca.fall_trap_drop_block","ca.trap_spawner"]}

kill @s