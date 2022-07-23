#Set the threat level equal to whatever the mob's attack damage stat is.
scoreboard players set @s threat_lvl 0
execute store result score @s threat_lvl run attribute @s minecraft:generic.attack_damage get


#Multiply or nerf by -30%/+50% based on Easy or Hard.
execute if score $core.difficulty ca.CONSTANT matches 3 run scoreboard players operation @s threat_lvl *= $custom_enchant.Hard_MX ca.CONSTANT
execute if score $core.difficulty ca.CONSTANT matches 3 run scoreboard players operation @s threat_lvl /= $custom_enchant.10_MX ca.CONSTANT
execute if score $core.difficulty ca.CONSTANT matches 3 run scoreboard players add @s threat_lvl 1

execute if score $core.difficulty ca.CONSTANT matches 1 run scoreboard players operation @s threat_lvl *= $custom_enchant.Easy_MX ca.CONSTANT
execute if score $core.difficulty ca.CONSTANT matches 1 run scoreboard players operation @s threat_lvl /= $custom_enchant.10_MX ca.CONSTANT
execute if score $core.difficulty ca.CONSTANT matches 1 run scoreboard players add @s threat_lvl 1

#Analyze the power on a bow, if exists. (Skeletons and Illusioners only)
#No Power
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b}]}] run scoreboard players set @s threat_level 5
#Power 1
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}},{}]}] run scoreboard players set @s threat_level 5
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}]}] run scoreboard players set @s threat_level 5
#Power 2
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}},{}]}] run scoreboard players set @s threat_level 6
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}]}] run scoreboard players set @s threat_level 6
#Power 3
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}},{}]}] run scoreboard players set @s threat_level 7
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}]}] run scoreboard players set @s threat_level 7
#Power 4
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}]}] run scoreboard players set @s threat_level 8
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}]}] run scoreboard players set @s threat_level 8
#Power 5
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}},{}]}] run scoreboard players set @s threat_level 9
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}]}] run scoreboard players set @s threat_level 9
#Power 6
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}},{}]}] run scoreboard players set @s threat_level 10
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}]}] run scoreboard players set @s threat_level 10
#Power 7
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:7s}]}},{}]}] run scoreboard players set @s threat_level 11
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:7s}]}}]}] run scoreboard players set @s threat_level 11
#Power 8
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:8s}]}},{}]}] run scoreboard players set @s threat_level 12
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:8s}]}}]}] run scoreboard players set @s threat_level 12
#Power 9
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:9s}]}},{}]}] run scoreboard players set @s threat_level 13
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:9s}]}}]}] run scoreboard players set @s threat_level 13
#Power 10
execute if entity @s[type=skeleton,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}},{}]}] run scoreboard players set @s threat_level 14
execute if entity @s[type=skeleton,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}}]}] run scoreboard players set @s threat_level 14

#No Power
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b},{}]}] run scoreboard players set @s threat_level 5
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b}]}] run scoreboard players set @s threat_level 5
#Power 1
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}},{}]}] run scoreboard players set @s threat_level 5
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}]}] run scoreboard players set @s threat_level 5
#Power 2
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}},{}]}] run scoreboard players set @s threat_level 6
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}]}] run scoreboard players set @s threat_level 6
#Power 3
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}},{}]}] run scoreboard players set @s threat_level 7
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}]}] run scoreboard players set @s threat_level 7
#Power 4
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}},{}]}] run scoreboard players set @s threat_level 8
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}]}] run scoreboard players set @s threat_level 8
#Power 5
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}},{}]}] run scoreboard players set @s threat_level 9
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}]}] run scoreboard players set @s threat_level 9
#Power 6
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}},{}]}] run scoreboard players set @s threat_level 10
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}]}] run scoreboard players set @s threat_level 10
#Power 7
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:7s}]}},{}]}] run scoreboard players set @s threat_level 11
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:7s}]}}]}] run scoreboard players set @s threat_level 11
#Power 8
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:8s}]}},{}]}] run scoreboard players set @s threat_level 12
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:8s}]}}]}] run scoreboard players set @s threat_level 12
#Power 9
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:9s}]}},{}]}] run scoreboard players set @s threat_level 13
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:9s}]}}]}] run scoreboard players set @s threat_level 13
#Power 10
execute if entity @s[type=illusioner,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}},{}]}] run scoreboard players set @s threat_level 14
execute if entity @s[type=illusioner,nbt={HandItems:[{},{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:10s}]}}]}] run scoreboard players set @s threat_level 14

#Return the value to the player, but only actually replace if its the highest threat found.
scoreboard players operation @a[distance=..16] threat_lvl > @s threat_lvl
