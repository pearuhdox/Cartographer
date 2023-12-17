data modify storage cartographer_custom_enchantments:custom_trident item set value {}
data modify storage cartographer_custom_enchantments:custom_trident entity set value {}
data modify storage cartographer_custom_enchantments:custom_trident entity set from entity @s
data modify storage cartographer_custom_enchantments:custom_trident item set from storage cartographer_custom_enchantments:custom_trident entity.item


scoreboard players operation $swap_val ca.ricochet = $cu_trident ca.ricochet
scoreboard players operation $swap_val ca.loyalty = $cu_trident ca.loyalty
scoreboard players operation $swap_val ca.current = $cu_trident ca.current
scoreboard players operation $swap_val ca.collapse = $cu_trident ca.collapse

summon snowball ~ ~ ~ {Tags:["ca.ranged_damage_trident_replace","ca.custom_just_fired"],Passengers:[{id:"minecraft:item_display",Tags:["ca.ranged_damage_trident_replace_display"],Passengers:[{id:"minecraft:marker",Tags:["ca.ranged_damage_trident_replace_marker"]}],item:{id:"minecraft:trident",Count:1s},interpolation_duration:0,start_interpolation:0,transformation:[0.000f, -0.000f, -1.000f,0.500f,1.000f, 0.000f, 0.000f,-0.500f,0.000f, -1.000f, 0.000f,-0.300f,0.000f, 0.000f, 0.000f,1.000f]}],Item:{id:"minecraft:warped_button",Count:1b}}

execute as @e[type=snowball,limit=1,sort=nearest,tag=ca.ranged_damage_trident_replace,tag=!ca.checked_custom_ranged_trident] run function cartographer_custom_enchantments:attribute_effects/ranged_damage/trident/branch

stopsound @a[distance=..16] * minecraft:item.trident.throw 
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1.2 1

kill @s