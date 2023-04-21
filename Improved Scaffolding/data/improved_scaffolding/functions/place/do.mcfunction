execute store result score $player_rot ims.var run data get entity @s Rotation[0]

function improved_scaffolding:place/find_looked_at

execute unless block ~ ~-0.1 ~ scaffolding as 91316181-5225-4193-1661-512491471612 at @s run function improved_scaffolding:place/vertical
execute if block ~ ~-0.1 ~ scaffolding if block ~ ~ ~ scaffolding if block ~ ~1 ~ scaffolding as 91316181-5225-4193-1661-512491471612 at @s positioned ~ ~1 ~ run function improved_scaffolding:place/vertical

execute if score @s ims.jump_time matches 1.. as 91316181-5225-4193-1661-512491471612 at @s run function improved_scaffolding:place/vertical

scoreboard players set @s ims.magnet 20
scoreboard players set $check_falling ims.var 10

tp 91316181-5225-4193-1661-512491471612 4206900 256 4206900
advancement revoke @s only improved_scaffolding:place_on_scaffold