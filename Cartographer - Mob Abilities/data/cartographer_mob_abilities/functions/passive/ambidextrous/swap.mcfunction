#Runs the Swap Ambidextrous
playsound minecraft:block.iron_door.open hostile @a[distance=..12] ~ ~ ~ 2 1.25
particle minecraft:effect ~ ~1 ~ 0.25 0 0.25 1 30 normal

scoreboard players set @s ca.ambi_cool 61

data remove storage cartographer_mob_abilities:info ambidextrous.Swap
data remove storage cartographer_mob_abilities:info ambidextrous.SwapPast

data modify storage cartographer_mob_abilities:info ambidextrous.Swap set from entity @s HandItems[0].tag.Swap
data modify storage cartographer_mob_abilities:info ambidextrous.SwapPast set from entity @s HandItems[0]
data remove storage cartographer_mob_abilities:info ambidextrous.SwapPast.tag.Swap

data modify storage cartographer_mob_abilities:info ambidextrous.Swap.tag.Swap set from storage cartographer_mob_abilities:info ambidextrous.SwapPast

data modify entity @s HandItems[0] set from storage cartographer_mob_abilities:info ambidextrous.Swap

execute if entity @s[type=#skeletons] run effect give @s slowness 2 1 true
execute if entity @s[type=#skeletons] run effect give @s slowness 1 2 true