execute if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:swift_sneak"}] run tag @s add ca.check_body
execute unless entity @s[tag=ca.check_body] if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:soul_speed"}] run tag @s add ca.check_body
execute unless entity @s[tag=ca.check_body] if data storage ca.susu:enchants body.tag.Enchantments[{id:"minecraft:frost_walker"}] run tag @s add ca.check_body
