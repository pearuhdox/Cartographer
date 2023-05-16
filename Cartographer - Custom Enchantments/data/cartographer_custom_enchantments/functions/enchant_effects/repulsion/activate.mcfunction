scoreboard players set $repulsion_mob ca.ench_var 0

scoreboard players operation $repulsion_lvl ca.repulsion = @s ca.repulsion

scoreboard players operation $fire_aspect ca.repulsion = @s ca.re_fire
scoreboard players operation $frostbite ca.repulsion = @s ca.re_frost
scoreboard players operation $executioner ca.repulsion = @s ca.re_exec
scoreboard players operation $knockback ca.repulsion = @s ca.re_knock

scoreboard players operation $cauterize ca.repulsion = @s ca.cauterize

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_repulsion_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_repulsion_offh] run tag @s add ca.check_ae_offh

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_repulsion_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_repulsion_offh] run tag @s add ca.check_si_offh

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:status_inflict/save/additive/do


execute as @e[type=#bb:hostile,distance=..6] at @s run function cartographer_custom_enchantments:enchant_effects/repulsion/mob

execute if score $repulsion_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/repulsion/vfx