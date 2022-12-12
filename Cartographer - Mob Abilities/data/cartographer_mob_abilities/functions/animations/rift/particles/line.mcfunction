scoreboard players set @s ca.raycast 20

execute if entity @s[tag=ca.chase] run scoreboard players set @s ca.raycast 5

execute rotated ~ 0 positioned ^ ^ ^1 run function cartographer_mob_abilities:animations/rift/particles/raycast