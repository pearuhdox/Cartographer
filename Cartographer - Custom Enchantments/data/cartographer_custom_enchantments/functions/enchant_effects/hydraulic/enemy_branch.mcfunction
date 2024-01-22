#Do Knockback first
scoreboard players set @s co_y 2
scoreboard players set @s co_send -4

tp @s ~ ~ ~ facing entity @p[scores={ca.hydraulic=1..}] feet
execute unless score $knockback ca.weapon_var matches 1.. run function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Damage
scoreboard players operation @s ca.damage_queue = $damage ca.hydraulic
function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments


#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/ranged_master

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0

#Random Crit Vfx
execute if score $success ca.attr_random_crit matches 1.. run function cartographer_custom_enchantments:attribute_effects/random_crit/vfx

function #minecraft:cartographer/events/enchants_mob_hit/ranged/hydraulic