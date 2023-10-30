function inv:internal/reset
function inv:save

tag @s add the_one_dying

data modify storage cartographer_charon:player inv set value []

execute if entity @s[tag=ca.can_self_revive] run spawnpoint @s ~ ~ ~

execute if data storage inv:main inv.all[] run function cartographer_charon:inv/iterate_death

tag @s add watched_die_already

tag @s remove the_one_dying

#Grab player specific data
function bb:lib/pldata/read

#Save cartographer_charon:player inv to working data - Resets it first
data modify storage bbl:pldata sudo_root.working_data.charon_player.inv set value []
data modify storage bbl:pldata sudo_root.working_data.charon_player.inv set from storage cartographer_charon:player inv

#Push to saved space
function bb:lib/pldata/write

function cartographer_charon:effect_manager/get_effects

function #minecraft:cartographer/events/player_dies