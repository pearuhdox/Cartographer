#Grab player specific data
function suso.player_data:get/do

#Save cartographer_charon:player inv to working data
data modify storage inv:main inv.all set from storage suso:pldata working_data.charon_player.inv

function cartographer_charon:inv/iterate_respawn

scoreboard players set @s dt.death 0

tag @s remove watched_die_already

#say watch die