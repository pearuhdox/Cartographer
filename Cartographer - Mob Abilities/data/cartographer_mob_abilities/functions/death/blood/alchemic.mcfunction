data modify storage cartographer_mob_abilities:bloodthirst Effects set value []
data modify storage cartographer_mob_abilities:bloodthirst Effects set from entity @s data.HandItems[1].tag.CustomPotionEffects

execute as @e[type=#bb:hostile,distance=..16,limit=5,sort=nearest] at @s run function cartographer_mob_abilities:death/blood/alchemic_branch

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s