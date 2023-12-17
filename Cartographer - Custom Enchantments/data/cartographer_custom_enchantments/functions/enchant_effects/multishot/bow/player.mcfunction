#function #minecraft:cartographer/events/enchantments/ranged/piercing

data modify storage cartographer_custom_enchantments:multishot data set value {}
data modify storage cartographer_custom_enchantments:multishot data set from entity @e[type=arrow,sort=nearest,limit=1,distance=..5,nbt=!{inGround:1b}]
data remove storage cartographer_custom_enchantments:multishot data.Motion
data remove storage cartographer_custom_enchantments:multishot data.Pos

execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {Tags:["ca.multishot_left","ca.multishot_spawn"]}
execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {Tags:["ca.multishot_right","ca.multishot_spawn"]}

execute anchored eyes positioned ^ ^ ^1 as @e[type=arrow,tag=ca.multishot_spawn,sort=nearest,limit=2,distance=..5] run function cartographer_custom_enchantments:enchant_effects/multishot/bow/modify_arrow 