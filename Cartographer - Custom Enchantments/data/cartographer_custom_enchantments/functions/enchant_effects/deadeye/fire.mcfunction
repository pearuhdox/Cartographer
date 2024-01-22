scoreboard players set $hit ca.deadeye 0

scoreboard players set $damage ca.deadeye 2
scoreboard players operation $damage ca.deadeye += @s ca.deadeye
scoreboard players operation $damage ca.deadeye *= $10 ca.CONSTANT

scoreboard players set $success ca.attr_random_crit 0
execute if score @s ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:enchant_effects/deadeye/random_crit_handler

scoreboard players set $fire_aspect ca.weapon_var 0
scoreboard players set $knockback ca.weapon_var 0

scoreboard players set $executioner ca.weapon_var 0
scoreboard players set $first_strike ca.weapon_var 0
scoreboard players set $hex_eater ca.weapon_var 0
scoreboard players set $tempo_theft ca.weapon_var 0
scoreboard players set $cauterize ca.weapon_var 0

scoreboard players set $duelist ca.weapon_var 0
scoreboard players set $hunter ca.weapon_var 0
scoreboard players set $smite ca.weapon_var 0

scoreboard players operation $fire_aspect ca.weapon_var = @s ca.dead_fire
scoreboard players operation $knockback ca.weapon_var = @s ca.dead_knock

scoreboard players operation $executioner ca.weapon_var = @s ca.dead_exec
scoreboard players operation $first_strike ca.weapon_var = @s ca.dead_first
scoreboard players operation $hex_eater ca.weapon_var = @s ca.dead_hex
scoreboard players operation $tempo_theft ca.weapon_var = @s ca.dead_tempo
scoreboard players operation $cauterize ca.weapon_var = @s ca.dead_cau

scoreboard players operation $duelist ca.weapon_var = @s ca.dead_duelist
scoreboard players operation $hunter ca.weapon_var = @s ca.dead_hunter
scoreboard players operation $smite ca.weapon_var = @s ca.dead_smite

scoreboard players set $pierce ca.deadeye 0
scoreboard players operation $pierce ca.deadeye = @s ca.dead_piercing


execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_deadeye_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_deadeye_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_deadeye_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_deadeye_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_deadeye_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_deadeye_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_deadeye_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_deadeye_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_deadeye_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_deadeye_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_deadeye_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_deadeye_feet] run tag @s add ca.check_si_feet


function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do


playsound minecraft:item.trident.throw player @a[distance=..12] ~ ~ ~ 0.4 2
playsound minecraft:entity.skeleton.shoot player @a[distance=..12] ~ ~ ~ 0.75 2

scoreboard players set @s ca.raycast 32
execute anchored eyes positioned ^ ^0.5 ^ facing entity @e[type=#bb:hostile,limit=1,distance=..16,sort=random] eyes rotated ~ ~2 positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchant_effects/deadeye/raycast

tag @e[distance=..16,type=#bb:hostile] remove ca.deadeye_hit