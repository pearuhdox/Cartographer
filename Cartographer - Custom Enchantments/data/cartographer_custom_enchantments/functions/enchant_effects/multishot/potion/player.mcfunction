#function #minecraft:cartographer/events/enchantments/ranged/piercing
#execute on origin run say boo

data modify storage cartographer_custom_enchantments:multishot data set value {}
data modify storage cartographer_custom_enchantments:multishot data set from entity @s
data remove storage cartographer_custom_enchantments:multishot data.Motion
data remove storage cartographer_custom_enchantments:multishot data.Pos

execute on origin at @s anchored eyes positioned ^ ^ ^1 run summon potion ~ ~ ~ {Tags:["ca.multishot_left","ca.multishot_spawn"]}
execute on origin at @s anchored eyes positioned ^ ^ ^1 run summon potion ~ ~ ~ {Tags:["ca.multishot_right","ca.multishot_spawn"]}

execute on origin at @s anchored eyes positioned ^ ^ ^1 as @e[type=potion,tag=ca.multishot_spawn,sort=nearest,limit=2,distance=..5] run function cartographer_custom_enchantments:enchant_effects/multishot/potion/modify_potion