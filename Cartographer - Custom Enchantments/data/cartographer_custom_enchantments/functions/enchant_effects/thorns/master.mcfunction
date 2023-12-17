scoreboard players set $thorns ca.thorns 0
scoreboard players set $thorns ca.t_fire 0
scoreboard players set $thorns ca.t_frost 0
scoreboard players set $thorns ca.t_exec 0
scoreboard players set $thorns ca.t_knock 0
scoreboard players set $thorns ca.cauterize 0

scoreboard players operation $thorns ca.thorns = @s ca.thorns
scoreboard players operation $thorns ca.t_fire = @s ca.t_fire
scoreboard players operation $thorns ca.t_frost = @s ca.t_frost

scoreboard players operation $thorns ca.t_knock = @s ca.t_knock
scoreboard players operation $thorns ca.t_exec = @s ca.t_exec

scoreboard players operation $thorns ca.cauterize = @s ca.cauterize

function #minecraft:cartographer/events/enchantments/passive/thorns

execute if entity @s[tag=ca.ae_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_ae_main
execute if entity @s[tag=ca.ae_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_ae_offh
execute if entity @s[tag=ca.ae_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_ae_head
execute if entity @s[tag=ca.ae_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_ae_body
execute if entity @s[tag=ca.ae_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_ae_legs
execute if entity @s[tag=ca.ae_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_ae_feet

execute if entity @s[tag=ca.si_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_si_main
execute if entity @s[tag=ca.si_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_si_offh
execute if entity @s[tag=ca.si_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_si_head
execute if entity @s[tag=ca.si_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_si_body
execute if entity @s[tag=ca.si_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_si_legs
execute if entity @s[tag=ca.si_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_si_feet

execute if entity @s[tag=ca.as_main] if entity @s[tag=ca.ce_thorns_main] run tag @s add ca.check_as_main
execute if entity @s[tag=ca.as_offh] if entity @s[tag=ca.ce_thorns_offh] run tag @s add ca.check_as_offh
execute if entity @s[tag=ca.as_head] if entity @s[tag=ca.ce_thorns_head] run tag @s add ca.check_as_head
execute if entity @s[tag=ca.as_body] if entity @s[tag=ca.ce_thorns_body] run tag @s add ca.check_as_body
execute if entity @s[tag=ca.as_legs] if entity @s[tag=ca.ce_thorns_legs] run tag @s add ca.check_as_legs
execute if entity @s[tag=ca.as_feet] if entity @s[tag=ca.ce_thorns_feet] run tag @s add ca.check_as_feet


function cartographer_custom_statuses:apply_effects/save/additive/do
function cartographer_custom_statuses:apply_self/save/additive/do
function cartographer_custom_statuses:apply_status/save/additive/do

execute at @s as @e[type=#bb:hostile,tag=thorns_mark,distance=..30] at @s run function cartographer_custom_enchantments:enchant_effects/thorns/effects

function cartographer_custom_statuses:apply_self/apply/create_aec

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

playsound minecraft:enchant.thorns.hit ambient @a[distance=..8] ~ ~ ~ 1.5 1
playsound minecraft:entity.cat.hiss player @a[distance=..8] ~ ~ ~ 0.8 2

particle minecraft:crit ~ ~0.2 ~ 0.5 0.2 0.5 0.1 20 normal