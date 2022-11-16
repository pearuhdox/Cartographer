function inv:internal/reset
function inv:save

tag @s add the_one_dying

data modify storage cartographer_charon:player inv set value []

#Run the death mechanic if the player has inventory unless they have a boon.
#Take away a boon if they have one and have inventory to lose. (Even if those items would be protected by other rules)
execute if data storage inv:main inv.all[] unless score @s ca.boons matches 1.. run function cartographer_charon:inv/iterate_death
execute if data storage inv:main inv.all[] if score @s ca.boons matches 1.. run function cartographer_charon:boons/remove

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