tp 31182015-4512-2011-3118-115180000000 ~ ~ ~

scoreboard players set $knockback_total ca.mob_var 0

execute store result score $knockback_amt ca.mob_var run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:knockback"}].lvl

scoreboard players operation $knockback_total ca.mob_var += $knockback_amt ca.mob_var

execute store result score $knockback_amt ca.mob_var run data get entity @s HandItems[0].tag.Enchantments[{id:"minecraft:punch"}].lvl

scoreboard players operation $knockback_total ca.mob_var += $knockback_amt ca.mob_var

execute if score @s ca.mob_kb matches 1.. run scoreboard players operation $knockback_total ca.mob_var = @s ca.mob_kb

scoreboard players set $invert_kb ca.mob_var 0
execute if entity @s[tag=ca.invert_kb] run scoreboard players set $invert_kb ca.mob_var 1