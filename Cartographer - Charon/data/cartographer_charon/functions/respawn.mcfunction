#Grab player specific data
function suso.player_data:get/do

#Save cartographer_charon:player inv to working data
data modify storage inv:main inv.all set from storage suso:pldata working_data.charon_player.inv

function cartographer_charon:inv/iterate_respawn

scoreboard players set @s dt.death 0

tag @s remove watched_die_already

execute if score $give_compass charon.gmr matches 1.. run function cartographer_charon:give/timepiece

execute if score $restore_pot_effects charon.gmr matches 1.. run function cartographer_charon:effect_manager/send_effects

execute unless score $no_death_note charon.gmr matches 1.. run advancement grant @s only cartographer_charon:death_note/root