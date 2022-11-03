execute unless entity @s[tag=ca.blazing] unless entity @s[tag=ca.glacial] unless entity @s[tag=ca.overloading] run function cartographer_mob_abilities:abilities/storm/visuals/default/circle

execute if entity @s[tag=ca.blazing] run function cartographer_mob_abilities:abilities/storm/visuals/blazing/circle
execute if entity @s[tag=ca.glacial] run function cartographer_mob_abilities:abilities/storm/visuals/glacial/circle
execute if entity @s[tag=ca.overloading] run function cartographer_mob_abilities:abilities/storm/visuals/overloading/circle