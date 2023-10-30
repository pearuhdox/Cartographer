scoreboard players set $momentum_mob ca.ench_var 0

execute store result score $momentum_damage ca.momentum run attribute @s minecraft:generic.attack_damage get

scoreboard players operation $fire_aspect ca.momentum = @s ca.mo_fire
scoreboard players operation $frostbite ca.momentum = @s ca.mo_frost
scoreboard players operation $executioner ca.momentum = @s ca.mo_exec
scoreboard players operation $knockback ca.momentum = @s ca.mo_knock

scoreboard players operation $fire_aspect ca.momentum += @s ca.fire_aspect
scoreboard players operation $frostbite ca.momentum += @s ca.frostbite
scoreboard players operation $executioner ca.momentum += @s ca.executioner
scoreboard players operation $knockback ca.momentum += @s ca.knockback

scoreboard players operation $cauterize ca.momentum = @s ca.cauterize

execute if entity @s[tag=ca.ae_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_momentum_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_momentum_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_momentum_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_momentum_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_momentum_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_momentum_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_momentum_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_momentum_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_momentum_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_momentum_feet] run tag @s add ca.check_si_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do


execute positioned ^ ^ ^3 as @e[type=#bb:hostile,distance=..4.5] run function cartographer_custom_enchantments:enchant_effects/momentum/hit

function cartographer_custom_enchantments:enchant_effects/momentum/vfx

function #minecraft:cartographer/events/enchantments/passive/momentum

scoreboard players remove @s ca.momentum_charge 2000