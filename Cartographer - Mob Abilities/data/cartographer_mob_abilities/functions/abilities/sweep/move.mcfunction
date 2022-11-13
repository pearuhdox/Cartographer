execute facing entity @p feet rotated ~ 0 if block ^ ^1 ^0.15 #cartographer_core:can_raycast run tp @s ^ ^ ^0.15
execute facing entity @p feet rotated ~ 0 unless block ^ ^ ^0.15 #cartographer_core:can_raycast if block ^ ^1 ^0.15 #cartographer_core:can_raycast run tp @s ^ ^1 ^0.15

execute if block ^ ^-0.1 ^ #cartographer_core:can_raycast run tp @s ^ ^-0.1 ^