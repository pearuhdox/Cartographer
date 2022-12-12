function inv:internal/reset
function inv:save

tag @s add the_one_dying

data modify storage cartographer_charon:player inv set value []


execute if data storage inv:main inv.all[] run function cartographer_charon:inv/iterate_death

tag @s add watched_die_already

tag @s remove the_one_dying

#Grab player specific data
function suso.player_data:get/do

#Save cartographer_charon:player inv to working data - Resets it first
data modify storage suso:pldata working_data.charon_player.inv set value []
data modify storage suso:pldata working_data.charon_player.inv set from storage cartographer_charon:player inv

#Push to saved space
function suso.player_data:put/do

function cartographer_charon:effect_manager/get_effects