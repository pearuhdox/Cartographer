$tp @s ~ ~ ~ facing entity @e[type=experience_orb,tag=erupting_xp,distance=..$(size),limit=1,sort=nearest] feet

scoreboard players set @s co_y 3
scoreboard players set @s co_send -5
function motion:motion/push

#Calculate and do damage
scoreboard players operation @s ca.damage_queue = $damage ca.eruption

scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

execute if score $eruption ca.eruption matches 1.. as @s run function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/melee_master

execute if score $do_apply_effects ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_effects/apply/create_aec
execute if score $do_apply_status ca.status_var matches 1.. at @s run function cartographer_custom_statuses:apply_status/apply/set_statuses

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0

function #minecraft:cartographer/events/enchants_mob_hit/tool/eruption

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx