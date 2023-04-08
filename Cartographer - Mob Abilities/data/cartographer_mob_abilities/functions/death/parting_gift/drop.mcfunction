#summon tnt ~ ~0.2 ~ {Fuse:100,Motion:[0.0,0.2,0.0]}

function cartographer_mob_abilities:death/parting_gift/determine_traits

#Spawn Volatile instead
execute if score $volatile ca.death_traits matches 1 run summon tnt ~ ~0.75 ~ {Fuse:80,Motion:[0.0,0.3,0.0]}

#If not volatile do these
execute unless score $volatile ca.death_traits matches 1 run summon armor_stand ~ ~0.75 ~ {Small:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["ca.parting_gift_drop","ca.new_drop","ca.no_traits"],Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;680385858,1742228337,-1910227810,870224247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU1YmMxY2Y4NmU0OTkwNjU0M2MzMTY5OWJlNjdmNjJmZGQ3ZjY1YzgzNjNjZjIwNTkyZGI1N2ExNTExNjZkZSJ9fX0="}]}}}}]}

#Spawn Clusters
execute unless score $volatile ca.death_traits matches 1 if score $cluster ca.death_traits matches 1 run function cartographer_mob_abilities:death/parting_gift/cluster_setup

playsound minecraft:entity.tnt.primed hostile @a[distance=..16] ~ ~ ~ 3 0.5

execute unless score $volatile ca.death_traits matches 1 run scoreboard players set $parting_gift_active ca.var 100

execute as @e[type=armor_stand,tag=ca.new_drop,limit=3] run function cartographer_mob_abilities:death/parting_gift/spawn

execute unless entity @s[type=creeper,tag=ca.deathbomb] run kill @s