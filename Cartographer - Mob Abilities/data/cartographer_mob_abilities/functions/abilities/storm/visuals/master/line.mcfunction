execute unless entity @s[tag=ca.blazing] unless entity @s[tag=ca.glacial] unless entity @s[tag=ca.overloading] run function cartographer_mob_abilities:abilities/storm/visuals/default/line

execute if entity @s[tag=ca.blazing] run function cartographer_mob_abilities:abilities/storm/visuals/blazing/line
execute if entity @s[tag=ca.glacial] run function cartographer_mob_abilities:abilities/storm/visuals/glacial/line
execute if entity @s[tag=ca.overloading] run function cartographer_mob_abilities:abilities/storm/visuals/overloading/line