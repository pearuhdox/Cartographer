scoreboard players operation $ranged ca.point_blank = @s ca.point_blank

execute as @e[type=arrow,sort=nearest,limit=3,distance=..5] at @s run function cartographer_custom_enchantments:enchant_effects/point_blank/branch

execute if entity @s[type=player,scores={ca.point_blank=1..}] run playsound minecraft:entity.armor_stand.break player @a[distance=..10] ~ ~ ~ 2 0.75
execute if entity @s[type=player,scores={ca.point_blank=1..}] positioned ~ ~1.4 ~ run particle minecraft:smoke ^ ^ ^1 0.2 0.2 0.2 0.02 5 normal