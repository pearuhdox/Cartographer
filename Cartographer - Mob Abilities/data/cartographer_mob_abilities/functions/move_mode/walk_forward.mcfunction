execute rotated ~ 0 if block ^ ^1 ^0.1 #cartographer_core:can_raycast unless block ^ ^ ^0.1 #minecraft:fences unless block ^ ^ ^0.1 #minecraft:fence_gates run tp @s ^ ^ ^0.1
execute rotated ~ 0 unless block ^ ^ ^0.1 #cartographer_core:can_raycast unless block ^ ^ ^0.1 #minecraft:fences unless block ^ ^ ^0.1 #minecraft:fence_gates if block ^ ^1 ^0.1 #cartographer_core:can_raycast run tp @s ^ ^1 ^0.1

execute rotated ~ 0 if block ^ ^-0.1 ^ #cartographer_core:can_raycast run tp @s ^ ^-0.1 ^