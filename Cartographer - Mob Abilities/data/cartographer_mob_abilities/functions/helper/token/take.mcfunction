#This mob has been told it can take a token.

#Before it can take a token, the mob needs to have something on its head slot. Or the head slot needs to be properly primed.
execute if data entity @s ArmorItems[3].id run data modify entity @s ArmorItems[3].tag.HeldToken set value {}
execute unless data entity @s ArmorItems[3].id run replaceitem entity @s armor.head stone_button{HeldToken:{},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]} 1

#It will either take a light or heavy token, depending on it's attack type.

#Light Attacks with no Heavy Attack Priority
execute if entity @s[tag=ambush,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=charge,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=disarm,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=fireball,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=flame_nova,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=frost_nova,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=smash,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=soulfire_nova,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=sweep,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=trapper,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=venom_nova,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=webshot,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light
execute if entity @s[tag=wind_nova,tag=!heavy_priority] run function cartographer_mob_abilities:helper/token/take/light

#Heavy Attacks with no Light Attack Priority
execute if entity @s[tag=augmenter,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=cloaker,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=duplicator,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=healer,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=hookshot,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=laser,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=magic_missile,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy
execute if entity @s[tag=wither_storm,tag=!light_priority] run function cartographer_mob_abilities:helper/token/take/heavy

#Mobs with Heavy Attack Priority
execute if entity @s[tag=heavy_priority] run function cartographer_mob_abilities:helper/token/take/heavy

#Mobs with Light Attack Priority
execute if entity @s[tag=light_priority] run function cartographer_mob_abilities:helper/token/take/light