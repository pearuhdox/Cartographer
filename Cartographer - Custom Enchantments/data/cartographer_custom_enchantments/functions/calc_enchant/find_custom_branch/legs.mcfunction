execute if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add ca.check_legs
execute unless entity @s[tag=ca.check_legs] if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add ca.check_legs
execute unless entity @s[tag=ca.check_legs] if data storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add ca.check_legs
