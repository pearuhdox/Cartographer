scoreboard players operation @s ca.damage_queue = $melee ca.attack_val
function cartographer_custom_enchantments:helper/damage/enchant_damage

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5

function motion:motion/push

#Fire Aspect
execute if score $melee ca.fire_aspect matches 1 run data modify entity @s Fire set value 101
execute if score $melee ca.fire_aspect matches 2 run data modify entity @s Fire set value 181
execute if score $melee ca.fire_aspect matches 3.. run data modify entity @s Fire set value 261

#Frostbite
execute if score $melee ca.frostbite matches 1 run scoreboard players set @s ca.frost_tier 1
execute if score $melee ca.frostbite matches 2 run scoreboard players set @s ca.frost_tier 2
execute if score $melee ca.frostbite matches 3 run scoreboard players set @s ca.frost_tier 3
execute if score $melee ca.frostbite matches 4 run scoreboard players set @s ca.frost_tier 4
execute if score $melee ca.frostbite matches 5.. run scoreboard players set @s ca.frost_tier 5
execute if score $melee ca.frostbite matches 1.. run scoreboard players set @s ca.frost_time 81

execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_status_inflict ca.status_var matches 1.. at @s run function cartographer_custom_statuses:status_inflict/apply/set_statuses


#scoreboard players set $melee ca.melee_chance 0

function #minecraft:cartographer/events/enchants_mob_hit/melee/surging_strike

tag @s add thrusted