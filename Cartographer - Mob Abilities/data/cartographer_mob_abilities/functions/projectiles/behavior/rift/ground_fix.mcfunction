execute if block ~ ~-1 ~ #bb:can_raycast unless block ~ ~-2 ~ #bb:can_raycast run tp @s ^ ^-1 ^
execute if block ~ ~-1 ~ #bb:can_raycast if block ~ ~-2 ~ #bb:can_raycast run kill @s

execute unless block ~ ~ ~ #bb:can_raycast if block ~ ~1 ~ #bb:can_raycast run tp @s ^ ^1 ^
execute unless block ~ ~ ~ #bb:can_raycast unless block ~ ~1 ~ #bb:can_raycast run kill @s