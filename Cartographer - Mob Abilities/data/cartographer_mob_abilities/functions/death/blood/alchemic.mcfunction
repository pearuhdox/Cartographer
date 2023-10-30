data modify storage cartographer_mob_abilities:bloodthirst effects set value []
data modify storage cartographer_mob_abilities:bloodthirst effects set from entity @s data.HandItems[1].tag.custom_potion_effects

execute as @e[type=#bb:hostile,distance=..16,limit=5,sort=nearest] at @s run function cartographer_mob_abilities:death/blood/alchemic_branch

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s