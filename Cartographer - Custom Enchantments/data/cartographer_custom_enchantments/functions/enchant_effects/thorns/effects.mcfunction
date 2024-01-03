#Do Damage next
scoreboard players set @s ca.damage_queue 0
scoreboard players operation @s ca.damage_queue = $thorns ca.thorns

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments

#Run On Hit Enchantments
function cartographer_custom_enchantments:enchant_effects/on_hit/master

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0

#Orian if you complain about this one more time I swear to God I will gut France like a fish
execute if entity @s[type=#minecraft:skeletons] unless entity @a[scores={ca.thorns=1..},distance=..1.6] run effect give @s blindness 1 0 true

function #minecraft:cartographer/events/enchants_mob_hit/passive/thorns