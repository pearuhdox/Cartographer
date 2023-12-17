
#Do Knockback first
scoreboard players set @s co_y 3
scoreboard players set @s co_send -4

execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 1.. run scoreboard players set @s co_y 4
execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $thorns ca.t_knock matches 5.. run scoreboard players set @s co_send -30


function motion:motion/push

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

#Run Cauterize if it exists
execute if score $thorns ca.cauterize matches 1 as @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $thorns ca.t_fire matches 1 as @s run data modify entity @s Fire set value 81
execute if score $thorns ca.t_fire matches 2 as @s run data modify entity @s Fire set value 161
execute if score $thorns ca.t_fire matches 3 as @s run data modify entity @s Fire set value 241
execute if score $thorns ca.t_fire matches 4 as @s run data modify entity @s Fire set value 321
execute if score $thorns ca.t_fire matches 5.. as @s run data modify entity @s Fire set value 401

execute if score $thorns ca.t_fire matches 1 as @s[type=#cartographer_custom_enchantments:zombies] run effect give @p[distance=..1.6,scores={ca.thorns=1..}] fire_resistance 6 0 true
execute if score $thorns ca.t_fire matches 2 as @s[type=#cartographer_custom_enchantments:zombies] run effect give @p[distance=..1.6,scores={ca.thorns=1..}] fire_resistance 11 0 true
execute if score $thorns ca.t_fire matches 3 as @s[type=#cartographer_custom_enchantments:zombies] run effect give @p[distance=..1.6,scores={ca.thorns=1..}] fire_resistance 16 0 true
execute if score $thorns ca.t_fire matches 4 as @s[type=#cartographer_custom_enchantments:zombies] run effect give @p[distance=..1.6,scores={ca.thorns=1..}] fire_resistance 21 0 true
execute if score $thorns ca.t_fire matches 5.. as @s[type=#cartographer_custom_enchantments:zombies] run effect give @p[distance=..1.6,scores={ca.thorns=1..}] fire_resistance 26 0 true

#Executioner
scoreboard players operation $exec ca.executioner = $thorns ca.t_exec
execute if score $thorns ca.t_exec matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0

#Orian if you complain about this one more time I swear to God I will gut France like a fish
execute if entity @s[type=#minecraft:skeletons] unless entity @a[scores={ca.thorns=1..},distance=..1.6] run effect give @s blindness 1 0 true

function #minecraft:cartographer/events/enchants_mob_hit/passive/thorns