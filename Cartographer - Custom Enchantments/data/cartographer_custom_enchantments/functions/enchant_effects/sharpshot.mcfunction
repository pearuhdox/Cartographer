scoreboard players operation $ranged ca.sharpshot = @s ca.sharpshot

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5] at @s run function cartographer_custom_enchantments:enchant_effects/sharpshot/branch

execute if entity @s[type=player,scores={ca.sharpshot=1..}] run playsound minecraft:entity.arrow.hit_player player @a[distance=..10] ~ ~ ~ 0.2 1
execute if entity @s[type=player,scores={ca.sharpshot=1..}] positioned ~ ~1.4 ~ run particle minecraft:composter ^ ^ ^1 0.2 0.2 0.2 0.02 5 normal