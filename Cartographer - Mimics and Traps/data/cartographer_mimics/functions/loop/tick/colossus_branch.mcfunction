execute unless entity @s[tag=size_setup] store result score @s mimic_health run data get entity @s Health

execute if entity @s[tag=size_setup] store result score @s mimic_health run data get entity @s AbsorptionAmount

execute if entity @s[tag=colossus_wrath] run scoreboard players operation @s mimic_health *= $2 ca.CONSTANT
execute if entity @s[tag=colossus_greed] run scoreboard players operation @s mimic_health *= $4 ca.CONSTANT

execute store result bossbar cartographer:colossus value run scoreboard players get @s mimic_health
execute run bossbar set cartographer:colossus players @a[distance=..40]

execute if entity @s[tag=colossus_pride] run bossbar set cartographer:colossus name {"text":"Colossus of Pride","color":"red","bold":true}
execute if entity @s[tag=colossus_wrath] run bossbar set cartographer:colossus name {"text":"Colossus of Wrath","color":"red","bold":true}
execute if entity @s[tag=colossus_envy] run bossbar set cartographer:colossus name {"text":"Colossus of Envy","color":"red","bold":true}
execute if entity @s[tag=colossus_lust] run bossbar set cartographer:colossus name {"text":"Colossus of Lust","color":"red","bold":true}
execute if entity @s[tag=colossus_greed] run bossbar set cartographer:colossus name {"text":"Colossus of Greed","color":"red","bold":true}
execute if entity @s[tag=colossus_gluttony] run bossbar set cartographer:colossus name {"text":"Colossus of Gluttony","color":"red","bold":true}
execute if entity @s[tag=colossus_sloth] run bossbar set cartographer:colossus name {"text":"Colossus of Sloth","color":"red","bold":true}

execute if data entity @s {HurtTime:9s} run function cartographer_mimics:colossus/hurt_sound

execute if entity @s[tag=colossus_wrath,tag=!egg_setup] run function cartographer_mimics:colossus/set_wrath_egg
execute if entity @s[tag=colossus_greed] run data modify entity @s HasStung set value 0b
execute if entity @s[tag=colossus_sloth] run effect give @s glowing 1 0 true

execute if entity @s[tag=colossus_pride,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/pride
execute if entity @s[tag=colossus_wrath,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/wrath
execute if entity @s[tag=colossus_envy,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/envy
execute if entity @s[tag=colossus_lust,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/lust
execute if entity @s[tag=colossus_greed,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/greed
execute if entity @s[tag=colossus_gluttony,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/gluttony
execute if entity @s[tag=colossus_sloth,tag=!ca.enraged,scores={mimic_health=..100}] run function cartographer_mimics:colossus/enrage/sloth

scoreboard players set $colossus_alive setup 1