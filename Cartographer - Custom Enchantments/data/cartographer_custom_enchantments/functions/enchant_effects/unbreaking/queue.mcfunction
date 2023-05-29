tag @s add ca.run_armor_unbreaking

execute if entity @s[tag=ca.unb_head] store result score @s ca.unb_head run data get entity @s Inventory[{Slot:103b}].tag.Damage
execute if entity @s[tag=ca.unb_body] store result score @s ca.unb_body run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if entity @s[tag=ca.unb_legs] store result score @s ca.unb_legs run data get entity @s Inventory[{Slot:101b}].tag.Damage
execute if entity @s[tag=ca.unb_feet] store result score @s ca.unb_feet run data get entity @s Inventory[{Slot:100b}].tag.Damage

advancement revoke @s only cartographer_custom_enchantments:damage_unbreaking