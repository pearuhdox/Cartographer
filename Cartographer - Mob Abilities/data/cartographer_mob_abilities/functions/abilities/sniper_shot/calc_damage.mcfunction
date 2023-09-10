execute store result score @s[type=!shulker] ca.ability_dmg run attribute @s minecraft:generic.attack_damage get
execute store result score @s[type=shulker] ca.ability_dmg run attribute @s minecraft:generic.armor_toughness get
scoreboard players operation $damage ca.ability_dmg = @s ca.ability_dmg
execute if entity @s[tag=ca.no_scaling] run scoreboard players operation $damage ca.ability_dmg *= $10 ca.CONSTANT
execute unless entity @s[tag=ca.no_scaling] run scoreboard players operation $damage ca.ability_dmg *= $2 ca.CONSTANT

execute if entity @s[tag=ca.ability_dmg+] run function cartographer_mob_abilities:ability_traits/ability_dmg_plus/calculation
execute if entity @s[tag=ca.ability_dmg++] run function cartographer_mob_abilities:ability_traits/ability_dmg_plus_plus/calculation
execute if entity @s[tag=ca.ability_dmg+++] run function cartographer_mob_abilities:ability_traits/ability_dmg_plus_plus_plus/calculation

execute if entity @s[tag=ca.ability_dmg-] run function cartographer_mob_abilities:ability_traits/ability_dmg-/calculation
execute if entity @s[tag=ca.ability_dmg--] run function cartographer_mob_abilities:ability_traits/ability_dmg--/calculation
execute if entity @s[tag=ca.ability_dmg---] run function cartographer_mob_abilities:ability_traits/ability_dmg---/calculation