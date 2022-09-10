scoreboard players set $rng_min bbl.rng 1
scoreboard players set $rng_max bbl.rng 1
function bb:lib/rng

scoreboard players operation $rng ca.death_traits = $value bbl.rng

summon armor_stand ~ ~0.75 ~ {Small:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["ca.parting_gift_drop","ca.new_drop","ca.no_traits","ca.left_bomb","ca.cluster_bomb"],Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;680385858,1742228337,-1910227810,870224247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU1YmMxY2Y4NmU0OTkwNjU0M2MzMTY5OWJlNjdmNjJmZGQ3ZjY1YzgzNjNjZjIwNTkyZGI1N2ExNTExNjZkZSJ9fX0="}]}}}}]}
summon armor_stand ~ ~0.75 ~ {Small:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["ca.parting_gift_drop","ca.new_drop","ca.no_traits","ca.right_bomb","ca.cluster_bomb"],Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;680385858,1742228337,-1910227810,870224247],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU1YmMxY2Y4NmU0OTkwNjU0M2MzMTY5OWJlNjdmNjJmZGQ3ZjY1YzgzNjNjZjIwNTkyZGI1N2ExNTExNjZkZSJ9fX0="}]}}}}]}
