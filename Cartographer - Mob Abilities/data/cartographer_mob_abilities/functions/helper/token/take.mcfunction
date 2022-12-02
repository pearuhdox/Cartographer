#This mob has been told it can take a token.
#It will either take a light or heavy token, depending on it's attack type.


#Light Attacks with no Heavy Attack Priority
execute if entity @s[tag=ca.ambush,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.charge,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.orbit,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.nova,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.smash,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.sweep,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.volley,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.quickdraw,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.storm,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_light
execute if entity @s[tag=ca.sidearm,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.sniper_shot,tag=!ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.summoner,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_light

#Heavy Attacks with no Light Attack Priority
execute if entity @s[tag=ca.augmenter,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.command,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.duplicator,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.healer,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.hookshot,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.laser,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.rift,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.haunt,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy
execute if entity @s[tag=ca.barrage,tag=!ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_light

#Mobs with Heavy Attack Priority
execute if entity @s[tag=ca.heavy_priority] run function cartographer_mob_abilities:helper/token/take/test_heavy

#Mobs with Light Attack Priority
execute if entity @s[tag=ca.light_priority] run function cartographer_mob_abilities:helper/token/take/test_light