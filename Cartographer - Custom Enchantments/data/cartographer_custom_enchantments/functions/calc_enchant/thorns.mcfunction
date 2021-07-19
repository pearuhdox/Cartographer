data modify storage ca.susu:enchants thorns_items set value {}
data modify storage ca.susu:enchants thorns_items.head set from storage ca.susu:enchants head
data modify storage ca.susu:enchants thorns_items.body set from storage ca.susu:enchants body
data modify storage ca.susu:enchants thorns_items.legs set from storage ca.susu:enchants legs
data modify storage ca.susu:enchants thorns_items.feet set from storage ca.susu:enchants feet
data modify storage ca.susu:enchants thorns_items.main set from storage ca.susu:enchants main
data modify storage ca.susu:enchants thorns_items.offh set from storage ca.susu:enchants offh

#Check Feet
execute unless data storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.feet set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.feet.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

#Check Legs
execute unless data storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.legs set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.legs.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

#Check Body
execute unless data storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.body set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.body.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

#Check Head
execute unless data storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.head set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.head.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

#Check Offhands
execute unless data storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.offh set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.offh.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu

#Check Mainhands
execute unless data storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"thorns"}].lvl run data modify storage ca.susu:enchants thorns_items.main set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"frostbite"}].lvl
scoreboard players operation @s ca.t_frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"vicious"}].lvl
scoreboard players operation @s ca.t_bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"overload"}].lvl
scoreboard players operation @s ca.t_shock += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"committed"}].lvl
scoreboard players operation @s ca.t_vuln += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"stunning"}].lvl
scoreboard players operation @s ca.t_stun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.CustomEnchantments[{id:"decay"}].lvl
scoreboard players operation @s ca.t_decay += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s ca.t_fire += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants thorns_items.main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
scoreboard players operation @s ca.t_knock += $temp ca.susu