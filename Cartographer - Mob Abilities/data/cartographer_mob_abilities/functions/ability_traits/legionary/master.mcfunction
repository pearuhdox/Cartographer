data modify storage cartographer_mob_abilities:summoner data set value {}
data modify storage cartographer_mob_abilities:summoner data set from entity @s HandItems[1]

execute unless score @s ca.summon_id matches 1.. run function cartographer_mob_abilities:ability_traits/legionary/find_type

scoreboard players set $swap ca.summon_id 0
scoreboard players operation $swap ca.summon_id = @s ca.summon_id

scoreboard players set $launch ca.summon_id 0
execute if entity @s[tag=ca.launch] run scoreboard players set $launch ca.summon_id 1

scoreboard players set $legionary_close ca.var 0
execute if entity @a[distance=..6] run scoreboard players set $legionary_close ca.var 1
execute unless entity @a[distance=..6] run scoreboard players set $legionary_close ca.var 2

execute if score $legionary_close ca.var matches 1 rotated ~ 0 positioned ^2 ^0.2 ^-1 run function cartographer_mob_abilities:ability_traits/legionary/replace
execute if score $legionary_close ca.var matches 2 rotated ~ 0 positioned ^2 ^0.2 ^1 run function cartographer_mob_abilities:ability_traits/legionary/replace

execute if score $legionary_close ca.var matches 1 rotated ~ 0 positioned ^-2 ^0.2 ^-1 run function cartographer_mob_abilities:ability_traits/legionary/replace
execute if score $legionary_close ca.var matches 2 rotated ~ 0 positioned ^-2 ^0.2 ^1 run function cartographer_mob_abilities:ability_traits/legionary/replace

execute as @e[tag=ca.legioned,tag=!legion_checked,limit=2,sort=nearest,distance=..4] at @s run function cartographer_mob_abilities:ability_traits/legionary/data

playsound minecraft:entity.vex.charge hostile @a[distance=..16] ~ ~ ~ 2 0.75 1
playsound minecraft:entity.evoker.prepare_summon hostile @a[distance=..16] ~ ~ ~ 1 1.3 1