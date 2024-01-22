scoreboard players set $hit ca.riptide 1


execute as @a[distance=..3.5,limit=1,sort=nearest,scores={ca.riptide=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/riptide/hit_player_branch

#Do Knockback first
scoreboard players set @s co_y 3
scoreboard players set @s co_send -4

execute if entity @s[type=silverfish] run scoreboard players set @s co_y 5
execute if entity @s[type=endermite] run scoreboard players set @s co_y 5

#TODO: KBR SCALING

execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 1.. run scoreboard players set @s co_y 4
execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 1 run scoreboard players set @s co_send -7
execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 2 run scoreboard players set @s co_send -11
execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 3 run scoreboard players set @s co_send -17
execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 4 run scoreboard players set @s co_send -22
execute unless entity @s[tag=ca.boss] if score $knockback ca.riptide matches 5.. run scoreboard players set @s co_send -30


function motion:motion/push

#Save For Executioner
scoreboard players set $exec_dmg bbl.storage 0
scoreboard players operation $exec_dmg bbl.storage = @s ca.damage_queue

#Damage and Weakening for Melee Protection
scoreboard players operation @s ca.damage_queue = $damage ca.riptide
scoreboard players operation @s ca.damage_queue *= $10 ca.CONSTANT

function cartographer_custom_enchantments:helper/damage/macro_setup
function cartographer_custom_enchantments:helper/damage/enchant_damage with storage cartographer:macro.custom_enchantments

effect give @s weakness 1 99 true

particle minecraft:crit ~ ~1 ~ 0.25 0.25 0.25 0.1 10 normal
particle minecraft:damage_indicator ~ ~1 ~ 0.25 0.25 0.25 0.1 4 force

playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1


#Run Cauterize if it exists
execute if score $cauterize ca.riptide matches 1 as @s run function cartographer_custom_enchantments:enchant_effects/cauterize/other

#Run Fire Aspect (after Cauterize)
execute if score $fire ca.riptide matches 1 as @s run data modify entity @s Fire set value 81
execute if score $fire ca.riptide matches 2 as @s run data modify entity @s Fire set value 161
execute if score $fire ca.riptide matches 3 as @s run data modify entity @s Fire set value 241
execute if score $fire ca.riptide matches 4 as @s run data modify entity @s Fire set value 321
execute if score $fire ca.riptide matches 5.. as @s run data modify entity @s Fire set value 401

#Executioner
scoreboard players operation $lvl ca.executioner = $exec ca.riptide
execute if score $exec ca.riptide matches 1.. run function cartographer_custom_enchantments:enchant_effects/executioner/branch

#Statuses!
function cartographer_custom_statuses:apply_effects/apply/create_aec
function cartographer_custom_statuses:apply_status/apply/set_statuses


execute if score $do_linger ca.status_var matches 1.. as @a[distance=..3.5,limit=1,sort=nearest,scores={ca.riptide=1..}] at @s run scoreboard players set @s ca.linger_cdl 300

#Reset this stat
scoreboard players set $exec_dmg bbl.storage 0