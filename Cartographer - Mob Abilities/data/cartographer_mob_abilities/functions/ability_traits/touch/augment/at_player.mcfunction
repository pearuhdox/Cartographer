#Call all mob traits on the mob, call all player traits on the player.
execute if entity @s[tag=ca.aug_temp_blazing] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/blazing/player_effect
execute if entity @s[tag=ca.aug_temp_glacial] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/glacial/player_effect
execute if entity @s[tag=ca.aug_temp_horrifying] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/horrifying/player_effect

execute if entity @s[tag=ca.aug_temp_webbing] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/webbing/player_effect
execute if entity @s[tag=ca.aug_temp_cursing] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/curse/player_effect

execute if entity @s[tag=ca.aug_temp_overloading] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/overloading/player_effect

execute if entity @s[tag=ca.aug_temp_venemous] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/venemous/player_effect
execute if entity @s[tag=ca.aug_temp_zephyrous] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/zephyrous/player_effect

#execute if entity @s[tag=ca.knockback] run function cartographer_mob_abilities:ability_traits/knockback/mob_effect
#execute if entity @s[tag=ca.knockback] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/knockback/player_effect
#execute if entity @s[tag=ca.knockback] run function cartographer_mob_abilities:ability_traits/knockback/return_effect

execute if entity @s[tag=ca.aug_temp_alchemist] run function cartographer_mob_abilities:ability_traits/alchemist/get_effects
execute if entity @s[tag=ca.aug_temp_alchemist] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/alchemist/player_effect

#EXCEPTION: Volatile runs at the player's position.
execute if entity @s[tag=ca.aug_temp_volatile] as @a[tag=ability_tagged,tag=touched] at @s run function cartographer_mob_abilities:ability_traits/volatile/effect

#function #minecraft:cartographer/events/mob_abilities/trait/on_hit