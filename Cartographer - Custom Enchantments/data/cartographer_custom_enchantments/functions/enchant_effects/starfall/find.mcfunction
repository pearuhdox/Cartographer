scoreboard players set $starfall_mob ca.ench_var 0

scoreboard players operation $starfall_lvl ca.starfall = @s ca.starfall

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.sm_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.sm_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.sm_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.sm_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.sm_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.sm_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.sm_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.sm_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.sm_hunter

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_starfall_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_starfall_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_starfall_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_starfall_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_starfall_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_starfall_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_starfall_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_starfall_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_starfall_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_starfall_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_starfall_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_starfall_feet] run tag @s add ca.check_si_feet

function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do


execute as @e[type=#bb:hostile,distance=..15,limit=1,sort=random,tag=!ca.starfalled] run function cartographer_custom_enchantments:enchant_effects/starfall/hit

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute if score $starfall_mob ca.ench_var matches 1.. run function cartographer_custom_statuses:apply_effects/apply/create_aec

execute if score $starfall_mob ca.ench_var matches 1.. run function #minecraft:cartographer/events/enchantments/passive/starfall
