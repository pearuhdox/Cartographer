#Tell Cartographer this pack is in use
scoreboard players set $loot_additions ca.installed 1

execute as @a at @s run function cartographer_loot_additions:loop/tick/players

execute store result score $result ca.loot_multiplier if entity @a
scoreboard players operation $result ca.loot_multiplier *= $scale ca.loot_multiplier

scoreboard players set $creative_ct ca.creative_ct 0
execute store result score $creative_ct ca.creative_ct if entity @a[gamemode=creative]