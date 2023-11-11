particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..16] ~ ~ ~ 1 2


scoreboard players set @s ca.damage_queue 10
function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments

tp @s ~ ~ ~ facing entity @p[tag=is_firing_deadeye] feet

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

function motion:motion/push

execute if score $deadeye ca.flame matches 1 run data merge entity @s {Fire:85}
execute if score $deadeye ca.frost matches 1 run effect give @s slowness 5 1


execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses


scoreboard players set $hit_check ca.deadeye 1

scoreboard players add @s ca.deadeye 1