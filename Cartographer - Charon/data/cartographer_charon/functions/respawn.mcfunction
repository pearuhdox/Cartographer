#Grab player specific data
execute unless score @s ca.boons matches 1.. run function cartographer_charon:respawn_items_branch

scoreboard players set @s dt.death 0

tag @s remove watched_die_already

execute if score $restore_pot_effects charon.gmr matches 1.. run function cartographer_charon:effect_manager/send_effects

execute unless score $no_death_note charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/root

execute as @e[type=armor_stand,distance=..10,tag=ca.charon_respawnable,limit=1,sort=nearest] at @s run function cartographer_charon:respawnable/respawn

#Take away a boon here.
execute if score @s ca.boons matches 1.. run function cartographer_charon:boons/remove

function #minecraft:cartographer/events/player_respawns