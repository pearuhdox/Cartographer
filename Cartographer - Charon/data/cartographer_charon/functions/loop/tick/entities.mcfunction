execute if score $cage_count dt.var matches 1.. if entity @s[type=armor_stand,tag=ca.item_cage,tag=setup_cage] run function cartographer_charon:cage/cage_tick

execute if score $spawner_defenses charon.gmr matches 1.. if entity @s[type=area_effect_cloud,tag=ca.charon_prime_spawner] run function cartographer_charon:cage/spawner_prime