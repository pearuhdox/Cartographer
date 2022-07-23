execute if entity @s[tag=!ca.init] run function cartographer_core:load/init_player

function cartographer_custom_enchantments:loop/tick/player
function cartographer_custom_statuses:loop/tick/player

#Enable triggers
scoreboard players enable @s lexica
scoreboard players enable @s menu

#Check if the player used a lexica in creative
execute if score @s ca.use_lex matches 1.. run function cartographer_core:loop/tick/branch/lexica_use

#Test if triggers are activated.
execute if score @s lexica matches 1.. run function cartographer_core:give_lexica
execute if score @s menu matches 1.. run function cartographer_core:load/reload/trigger

#Check if the player used the options menu
execute if score @s ca.options_trig matches 1.. run function cartographer_core:options/player/trigger
execute if score @s ca.lexica_trig matches 1.. run function cartographer_core:lexica/trigger

#Reduce the interal attack timer system scores.
execute if score @s ca.atk_time matches 1.. run scoreboard players remove @s ca.atk_time 1
execute if score @s ca.atk_time_true matches 1.. run scoreboard players remove @s ca.atk_time_true 1

#Run the lexica. PEAR CHECK THIS LATER
#execute as @a at @s run function cartographer_core:lexica/is_holding
#execute as @a[scores={ca.use_lexica=1..},tag=holding_lexica] at @s run function cartographer_core:lexica/open
execute if score @s ca.lexica_time matches 1 run function cartographer_core:loop/tick/branch/lexica_time
scoreboard players set @s ca.lexica_sneak 0

#Run anvil and grindstone destruction
execute if score $no_anvil ca.gamerule matches 1 if score @s ca.use_anvil matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:loop/tick/branch/anvil_disable

execute if score $no_grindstone ca.gamerule matches 1 if score @s ca.use_grind matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:loop/tick/branch/grindstone_disable


#Do Checks for Player created projectiles.
execute if score @s ca.shoot_bow matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.shoot_cross matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.throw_trident matches 1.. run function cartographer_core:helper/tag_player_projectile

#Resets
scoreboard players set @s ca.use_lectern 0

#Reset Draw/Load/Use Timers and Booleans
execute if score @s ca.is_draw_bow matches 0 run scoreboard players set @s ca.draw_bow_time 0
execute if score @s ca.is_load_cro matches 0 run scoreboard players set @s ca.load_cro_time 0
execute if score @s ca.is_use_ee matches 0 run scoreboard players set @s ca.use_ee_time 0
execute if score @s ca.is_hold_shi matches 0 run scoreboard players set @s ca.hold_shi_time 0
execute if score @s ca.is_hold_tri matches 0 run scoreboard players set @s ca.hold_tri_time 0

scoreboard players set @s ca.is_draw_bow 0
scoreboard players set @s ca.is_load_cro 0
scoreboard players set @s ca.is_hold_shi 0
scoreboard players set @s ca.is_hold_tri 0
scoreboard players set @s ca.is_use_ee 0

execute if score @s ca.draw_bow_time matches 1.. run scoreboard players remove @s ca.draw_bow_time 1
execute if score @s ca.load_cro_time matches 1.. run scoreboard players remove @s ca.load_cro_time 1
execute if score @s ca.hold_shi_time matches 1.. run scoreboard players remove @s ca.hold_shi_time 1
execute if score @s ca.hold_tri_time matches 1.. run scoreboard players remove @s ca.hold_tri_time 1
execute if score @s ca.use_ee_time matches 1.. run scoreboard players remove @s ca.use_ee_time 1