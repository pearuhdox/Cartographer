execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = $damage ca.sweeping

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by @p[scores={ca.sweeping=1..}]

scoreboard players set @s co_y 2
scoreboard players set @s co_send -5
function motion:motion/push

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master

#scoreboard players set $melee ca.melee_chance 0

function #minecraft:cartographer/events/enchants_mob_hit/melee/sweeping

tag @s add thrusted

scoreboard players add $count ca.sweeping 1

execute if score $trigger ca.allow_fast_attack matches 1.. run function cartographer_custom_enchantments:attribute_effects/attack_speed/enemy_hit

execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx