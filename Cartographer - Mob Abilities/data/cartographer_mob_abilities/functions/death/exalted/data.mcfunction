data remove storage exalted EntityData.Pos
data remove storage exalted EntityData.UUID

data modify entity @s {} merge from storage exalted EntityData

tag @s remove ca.deathbomb_creeper_setup
tag @s remove ca.deathbomb_fuse_primed
tag @s remove ca.delta_creeper_setup

function cartographer_core:helper/unregister_ehid

execute if entity @s[tag=ca.deathbomb] run data modify entity @s HandDropChances set value [-327.67F,-327.67F]