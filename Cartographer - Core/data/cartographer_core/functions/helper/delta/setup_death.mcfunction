execute if entity @s[tag=ca.prevent_effects] run data modify entity @s Fuse set value 1
execute unless entity @s[tag=ca.prevent_effects] run data modify entity @s Fuse set value 0
data modify entity @s ignited set value 1b

function delta:api/explosion_emitter_particle
function delta:api/explosion_sound

execute if score $mob_abilities ca.installed matches 1.. run function cartographer_core:helper/delta/mob_abilities_wrapper