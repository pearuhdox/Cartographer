function #minecraft:cartographer/events/enchants_mob_hit/ranged/hydraulic

scoreboard players operation $lvl ca.hydraulic = @s ca.hydraulic

scoreboard players operation $extra ca.hydraulic *= $2 ca.CONSTANT


execute as @e[type=trident,distance=..5,sort=nearest,limit=1] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic/trident_branch

execute if score @s ca.hydraulic matches 101 store result score $damage ca.hydraulic run attribute @s minecraft:generic.attack_damage get

execute if score @s ca.hydraulic matches 1 store result score $damage ca.hydraulic run data get storage cartographer_custom_enchantments:hydraulic item.tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Operation:0}].Amount
execute if score @s ca.hydraulic matches 1 unless data storage cartographer_custom_enchantments:hydraulic item.tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Operation:0}].Amount run scoreboard players set $damage ca.hydraulic 8
execute if score @s ca.hydraulic matches 1 run scoreboard players add $damage ca.hydraulic 1

execute if score @s ca.attr_ranged matches 1.. run scoreboard players operation $damage ca.hydraulic = @s ca.attr_ranged
execute if score @s ca.attr_ranged matches 1.. run scoreboard players operation $damage ca.hydraulic /= $10 ca.CONSTANT

scoreboard players operation $damage ca.hydraulic += $extra ca.hydraulic

data modify block 4206900 1 4206900 Items set value []
data modify block 4206900 1 4206900 Items append from storage cartographer_custom_enchantments:hydraulic item

execute if score $lvl ca.hydraulic matches 1 run loot replace entity @s weapon.offhand 1 mine 4206900 1 4206900 air{drop_contents:1b}
execute if score $lvl ca.hydraulic matches 101 run loot replace entity @s weapon.mainhand 1 mine 4206900 1 4206900 air{drop_contents:1b}

playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..8] ~ ~ ~ 1.5 0.75
playsound minecraft:item.trident.throw player @a[distance=..8] ~ ~ ~ 1 0.75

execute positioned ^ ^ ^3 run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.2 10
execute positioned ^ ^ ^3 run particle minecraft:splash ~ ~0.5 ~ 1 0.7 1 1 300

execute positioned ^ ^ ^3 run function cartographer_custom_enchantments:enchant_effects/hydraulic/circle_raycast

scoreboard players operation $fire ca.hydraulic = @s ca.hy_fire
scoreboard players operation $knockback ca.hydraulic = @s ca.hy_knock
scoreboard players operation $frostbite ca.hydraulic = @s ca.hy_frost
scoreboard players operation $exec ca.hydraulic = @s ca.hy_exec
scoreboard players operation $cauterize ca.hydraulic = @s ca.cauterize

execute if score @s ca.hydraulic matches 101 run tag @s add ca.check_ae_main
execute if score @s ca.hydraulic matches 101 run tag @s add ca.check_si_main
execute if score @s ca.hydraulic matches 101 run tag @s add ca.check_as_main

execute if score @s ca.hydraulic matches 1 run tag @s add ca.check_ae_offh
execute if score @s ca.hydraulic matches 1 run tag @s add ca.check_si_offh
execute if score @s ca.hydraulic matches 1 run tag @s add ca.check_as_offh

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do

execute positioned ^ ^ ^3 as @e[type=#bb:hostile,distance=..3] at @s run function cartographer_custom_enchantments:enchant_effects/hydraulic/enemy_branch

function cartographer_custom_statuses:apply_effects/apply/create_aec

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300