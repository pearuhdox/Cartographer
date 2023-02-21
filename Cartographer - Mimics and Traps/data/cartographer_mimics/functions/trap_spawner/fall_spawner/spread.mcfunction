execute unless block ~1 ~ ~ #cartographer_core:can_raycast if block ~1 ~-1 ~ #cartographer_core:can_raycast run summon marker ~1 ~ ~ {Tags:["ca.fall_trap_drop_block","ca.trap_spawner"]}

execute unless block ~-1 ~ ~ #cartographer_core:can_raycast if block ~1 ~-1 ~ #cartographer_core:can_raycast run summon marker ~-1 ~ ~ {Tags:["ca.fall_trap_drop_block","ca.trap_spawner"]}

execute unless block ~ ~ ~1 #cartographer_core:can_raycast if block ~1 ~-1 ~ #cartographer_core:can_raycast run summon marker ~ ~ ~1 {Tags:["ca.fall_trap_drop_block","ca.trap_spawner"]}

execute unless block ~ ~ ~-1 #cartographer_core:can_raycast if block ~1 ~-1 ~ #cartographer_core:can_raycast run summon marker ~ ~ ~-1 {Tags:["ca.fall_trap_drop_block","ca.trap_spawner"]}