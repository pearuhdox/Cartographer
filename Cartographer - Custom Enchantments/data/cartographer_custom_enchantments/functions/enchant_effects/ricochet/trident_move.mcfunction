playsound minecraft:item.trident.throw player @a[distance=..20] ~ ~ ~
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 5 normal

data modify entity @s NoGravity set value 0b

scoreboard players set @s co_send 25

tag @s add co_rotation_lock

scoreboard players set $ricochet_success ca.var 0

execute store success score $ricochet_success ca.var run tp @s ~ ~ ~ facing entity @e[distance=..15,type=#bb:hostile,limit=1,sort=nearest,scores={ca.ricochet_cooldown=0}] eyes

execute if score $ricochet_success ca.var matches 1.. run function motion:motion/push

execute unless score $ricochet_success ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/ricochet/end_chain