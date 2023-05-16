scoreboard players set $gravity_mob ca.ench_var 0

scoreboard players operation $gravity_lvl ca.gravity = @s ca.gravity

scoreboard players operation $gravity_dmg ca.gravity_fall = @s ca.gravity_fall
scoreboard players operation $gravity_dmg ca.gravity_fall /= $100 ca.CONSTANT
scoreboard players remove $gravity_dmg ca.gravity_fall 2
execute if score $gravity_dmg ca.gravity_fall matches ..-1 run scoreboard players set $gravity_dmg ca.gravity_fall 0

scoreboard players operation $fire_aspect ca.gravity = @s ca.g_fire
scoreboard players operation $frostbite ca.gravity = @s ca.g_frost
scoreboard players operation $executioner ca.gravity = @s ca.g_exec
scoreboard players operation $knockback ca.gravity = @s ca.g_knock

scoreboard players operation $cauterize ca.gravity = @s ca.cauterize

data modify storage cartographer_custom_enchantments:gravity data.Effect set value {}
data modify storage cartographer_custom_enchantments:gravity data.Effect set from entity @s ActiveEffects[{Id:8}].HiddenEffect

execute store result score $jb ca.gravity_fall run data get storage cartographer_custom_enchantments:gravity data.Effect.Amplifier

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_gravity_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_gravity_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_gravity_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_gravity_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_gravity_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_gravity_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_gravity_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_gravity_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_gravity_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_gravity_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_gravity_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_gravity_feet] run tag @s add ca.check_si_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:status_inflict/save/additive/do


execute as @e[distance=..3.5,type=#bb:hostile] at @s run function cartographer_custom_enchantments:enchant_effects/gravity/mob

scoreboard players operation $gravity_dmg ca.gravity_fall -= $jb ca.gravity_fall

execute if score $gravity_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/vfx

execute unless score $gravity_mob ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchant_effects/gravity/fall_dmg