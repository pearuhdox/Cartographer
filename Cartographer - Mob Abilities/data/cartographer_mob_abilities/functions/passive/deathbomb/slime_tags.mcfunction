data modify entity @s Tags set from storage cartographer_mob_abilities:deathbomb Tags
data modify entity @s HandItems set from storage cartographer_mob_abilities:deathbomb HandItems
execute unless entity @s[tag=ca.exalted] run data modify entity @s HandDropChances set value [-327.670F,-327.670F]
execute if entity @s[tag=ca.exalted] run data modify entity @s HandDropChances set value [2.000F,-327.670F]


tag @s remove ca.has_active
tag @s remove ca.deathbomb
tag @s add ca.deathbomb_dummy_spawn
tag @s add setup