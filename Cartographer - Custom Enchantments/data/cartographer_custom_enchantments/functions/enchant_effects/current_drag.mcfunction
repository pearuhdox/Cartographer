execute positioned as @e[type=trident,scores={ca.current=1},limit=1,distance=..6] run tp @s ~ ~-0.3 ~
execute positioned as @e[type=armor_stand,scores={ca.current=1},tag=loyalty_projectile,limit=1,distance=..6] run tp @s ~ ~0.6 ~

scoreboard players set @s ca.effect_stun 20
effect give @s slow_falling 1 0

playsound minecraft:entity.fishing_bobber.splash player @a[distance=..10] ~ ~ ~ 0.1 1.25

execute unless entity @e[type=trident,scores={ca.current=1},distance=..6] unless entity @e[type=armor_stand,scores={ca.current=1},tag=loyalty_projectile,distance=..6] run function cartographer_custom_enchantments:enchant_effects/current_drag/projectile_branch