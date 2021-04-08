execute positioned as @e[type=trident,tag=current,limit=1,distance=..6] run tp @s ~ ~-0.3 ~

execute positioned as @e[type=armor_stand,tag=current,tag=loyalty_projectile,limit=1,distance=..6] run tp @s ~ ~0.6 ~

scoreboard players set @s effect_stunned 20
effect give @s slow_falling 1 0

playsound minecraft:entity.fishing_bobber.splash player @a[distance=..10] ~ ~ ~ 0.1 1.25

execute unless entity @e[type=trident,tag=current,distance=..6] unless entity @e[type=armor_stand,tag=current,tag=loyalty_projectile,distance=..6] run tag @s remove current_drag
execute unless entity @e[type=trident,tag=current,distance=..6] unless entity @e[type=armor_stand,tag=current,tag=loyalty_projectile,distance=..6] run tag @s remove is_current
execute unless entity @e[type=trident,tag=current,distance=..6] unless entity @e[type=armor_stand,tag=current,tag=loyalty_projectile,distance=..6] run scoreboard players set @a[distance=..5] ca.ce.cur_spd 15