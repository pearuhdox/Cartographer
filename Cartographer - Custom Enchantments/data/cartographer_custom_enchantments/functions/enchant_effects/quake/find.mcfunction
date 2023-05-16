scoreboard players set $quake_mob ca.ench_var 0

scoreboard players operation $quake_lvl ca.quake = @s ca.quake

scoreboard players operation $fire_aspect ca.quake = @s ca.qu_fire
scoreboard players operation $frostbite ca.quake = @s ca.qu_frost
scoreboard players operation $executioner ca.quake = @s ca.qu_exec
scoreboard players operation $knockback ca.quake = @s ca.qu_knock

scoreboard players operation $cauterize ca.quake = @s ca.cauterize

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_quake_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_quake_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_quake_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_quake_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_quake_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_quake_feet] run tag @s add ca.check_si_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:status_inflict/save/additive/do


execute as @e[type=#bb:hostile,distance=..5.5] run function cartographer_custom_enchantments:enchant_effects/quake/hit

execute if score $quake_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/quake/vfx