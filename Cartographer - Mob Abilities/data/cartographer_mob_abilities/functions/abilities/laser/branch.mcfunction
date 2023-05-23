scoreboard players set @s ca.raycast 64
execute as @s positioned ^ ^1 ^ run function cartographer_mob_abilities:abilities/laser/raycast

execute on vehicle run kill @s
kill @s