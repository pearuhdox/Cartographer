#Position Independent
execute if entity @s[tag=ca.celestial,tag=ca.touch] store result score $damage ca.ability_dmg run attribute @s minecraft:generic.attack_damage get
execute if entity @s[tag=ca.celestial] run function cartographer_mob_abilities:ability_traits/celestial/player_effect
execute if entity @s[tag=ca.aftershock] run function cartographer_mob_abilities:ability_traits/aftershock/prime
execute if entity @s[tag=ca.carapace] run function cartographer_mob_abilities:ability_traits/carapace/effect


#Runs at the mob position
execute if entity @s[tag=ca.predator] at @s run function cartographer_mob_abilities:ability_traits/predator/effect
execute if entity @s[tag=ca.evocative] at @s run function cartographer_mob_abilities:ability_traits/evocative/effect