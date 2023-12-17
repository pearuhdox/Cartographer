execute if entity @s[scores={ca.frost=1..}] run particle minecraft:item_snowball ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={ca.explosive=1..}] run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={ca.tempo_theft=1..}] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal
execute if entity @s[scores={ca.ov_tier=1..}] run particle minecraft:wax_off ~ ~ ~ 0.2 0.2 0.2 1 2 normal
execute if entity @s[scores={ca.ov_tier=1..}] run particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.05 1 normal

execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 1.. run scoreboard players remove @s ca.vol_dmg 2
execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 2.. run scoreboard players remove @s ca.vol_dmg 2
execute if score @s ca.explosive matches 1.. if score @s ca.point_blank matches 3.. run scoreboard players remove @s ca.vol_dmg 2

scoreboard players operation $arrow_mod ca.var = @s ca.lifetime
scoreboard players operation $arrow_mod ca.var %= $2 ca.CONSTANT

execute if score $arrow_mod ca.var matches 1 if score @s ca.explosive matches 1.. if score @s ca.sharpshot matches 1.. run scoreboard players add @s ca.vol_dmg 1
execute if score $arrow_mod ca.var matches 1 if score @s ca.explosive matches 1.. if score @s ca.sharpshot matches 2.. run scoreboard players add @s ca.vol_dmg 1
execute if score $arrow_mod ca.var matches 1 if score @s ca.explosive matches 1.. if score @s ca.sharpshot matches 3.. run scoreboard players add @s ca.vol_dmg 1

tag @s remove ca.custom_just_fired

execute if entity @s[nbt={inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/arrow_reset