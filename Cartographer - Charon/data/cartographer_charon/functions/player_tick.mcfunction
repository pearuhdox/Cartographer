execute if score @s[tag=!watched_die_already] dt.death matches 1.. run function cartographer_charon:watches_you_die
execute if score @s dt.death matches 1.. if score @s dt.respawn matches 3 run function cartographer_charon:respawn
execute if entity @s[nbt={Inventory:[{id:"minecraft:bundle",tag:{DeathBundle:1b}}]}] run function cartographer_charon:bundle/collect