#Runs as/at the player's position
execute if entity @s[tag=ca.blazing] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/blazing/player_effect
execute if entity @s[tag=ca.glacial] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/glacial/player_effect
execute if entity @s[tag=ca.horrifying] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/horrifying/player_effect

#(Overloading runs twice)
execute if entity @s[tag=ca.overloading] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/overloading/player_effect
execute if entity @s[tag=ca.overloading] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/overloading/player_effect

execute if entity @s[tag=ca.venemous] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/venemous/player_effect
execute if entity @s[tag=ca.zephyrous] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/zephyrous/player_effect

execute if entity @s[tag=ca.alchemist] run function cartographer_mob_abilities:ability_traits/alchemist/get_effects
execute if entity @s[tag=ca.alchemist] as @a[tag=ability_tagged] at @s run function cartographer_mob_abilities:ability_traits/alchemist/player_effect

#Position Independent
execute if entity @s[tag=ca.celestial] if entity @a[tag=ability_tagged] run function cartographer_mob_abilities:ability_traits/celestial/player_effect