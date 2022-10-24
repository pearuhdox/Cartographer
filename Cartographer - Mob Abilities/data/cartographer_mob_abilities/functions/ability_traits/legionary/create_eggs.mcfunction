data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from entity @s HandItems[1]

summon item ^2 ^1 ^ {Age:5959,Health:1000,PickupDelay:32767,Tags:["ca.legionary_egg","ca.left"],Item:{id:"minecraft:stone_button",Count:1b}}
summon item ^-2 ^1 ^ {Age:5959,Health:1000,PickupDelay:32767,Tags:["ca.legionary_egg","ca.right"],Item:{id:"minecraft:stone_button",Count:1b}}

execute as @e[type=item,tag=ca.legionary_egg,tag=!ca.data_fixed,distance=..3,limit=2] at @s run function cartographer_mob_abilities:ability_traits/legionary/egg_data