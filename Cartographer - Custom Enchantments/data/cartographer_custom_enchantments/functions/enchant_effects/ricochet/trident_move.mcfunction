playsound minecraft:item.trident.throw player @a[distance=..20] ~ ~ ~
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 5 normal

data modify entity @s NoGravity set value 0b

scoreboard players set @s co_send 25

tag @s add co_rotation_lock

scoreboard players set $ricochet_success ca.var 0

execute store success score $ricochet_success ca.var run tp @s ~ ~ ~ facing entity @e[distance=..15,type=#bb:hostile,limit=1,sort=nearest,scores={ca.ricochet_cooldown=0}] eyes

execute if score $ricochet_success ca.var matches 1.. run function motion:motion/push

execute if score @s ca.attr_ranged matches 1.. run scoreboard players operation $val ca.attr_ranged = @s ca.attr_ranged
execute if score @s ca.attr_ranged matches 1.. run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/get_enchants

execute if score @s ca.attr_ranged matches 1.. run scoreboard players operation $val ca.attr_ranged *= $90 ca.CONSTANT
execute if score @s ca.attr_ranged matches 1.. run scoreboard players operation $val ca.attr_ranged /= $100 ca.CONSTANT


execute if score $ricochet_success ca.var matches 1.. if score @s ca.attr_ranged matches 1.. facing ^ ^ ^-3 as @s run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/replace


execute unless score $ricochet_success ca.var matches 1.. run function cartographer_custom_enchantments:enchant_effects/ricochet/end_chain