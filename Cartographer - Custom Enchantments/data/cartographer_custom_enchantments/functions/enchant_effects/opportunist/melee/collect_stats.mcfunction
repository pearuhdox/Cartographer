scoreboard players set @s op_com 0
scoreboard players set @s op_dec 0
scoreboard players set @s op_due 0
scoreboard players set @s op_exe 0
scoreboard players set @s op_fro 0
scoreboard players set @s op_hun 0
scoreboard players set @s op_ove 0
scoreboard players set @s op_stu 0
scoreboard players set @s op_tra 0
scoreboard players set @s op_van 0
scoreboard players set @s op_vic 0
scoreboard players set @s op_fir 0
scoreboard players set @s op_sha 0
scoreboard players set @s op_smi 0
scoreboard players set @s op_ban 0
scoreboard players set @s op_kno 0

scoreboard players set @s op_dmg 0

data modify storage ca.opportunist:enchants offhand set value {}
data modify storage ca.opportunist:enchants offhand set from entity @s Inventory[{Slot:-106b}]

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:wooden_pickaxe"} run scoreboard players set @s op_dmg 2
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:wooden_shovel"} run scoreboard players set @s op_dmg 2
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:wooden_axe"} run scoreboard players set @s op_dmg 7
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:wooden_sword"} run scoreboard players set @s op_dmg 4

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:stone_pickaxe"} run scoreboard players set @s op_dmg 3
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:stone_shovel"} run scoreboard players set @s op_dmg 3
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:stone_axe"} run scoreboard players set @s op_dmg 9
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:stone_sword"} run scoreboard players set @s op_dmg 5

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:iron_pickaxe"} run scoreboard players set @s op_dmg 4
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:iron_shovel"} run scoreboard players set @s op_dmg 4
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:iron_axe"} run scoreboard players set @s op_dmg 9
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:iron_sword"} run scoreboard players set @s op_dmg 6

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:golden_pickaxe"} run scoreboard players set @s op_dmg 2
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:golden_shovel"} run scoreboard players set @s op_dmg 2
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:golden_axe"} run scoreboard players set @s op_dmg 7
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:golden_sword"} run scoreboard players set @s op_dmg 4

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:diamond_pickaxe"} run scoreboard players set @s op_dmg 5
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:diamond_shovel"} run scoreboard players set @s op_dmg 5
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:diamond_axe"} run scoreboard players set @s op_dmg 9
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:diamond_sword"} run scoreboard players set @s op_dmg 7

execute if data storage ca.opportunist:enchants offhand{id:"minecraft:netherite_pickaxe"} run scoreboard players set @s op_dmg 6
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:netherite_shovel"} run scoreboard players set @s op_dmg 6
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:netherite_axe"} run scoreboard players set @s op_dmg 10
execute if data storage ca.opportunist:enchants offhand{id:"minecraft:netherite_sword"} run scoreboard players set @s op_dmg 8

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Committed
scoreboard players operation @s op_com += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Decay
scoreboard players operation @s op_dec += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Duelist
scoreboard players operation @s op_due += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Executioner
scoreboard players operation @s op_exe += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Frostbite
scoreboard players operation @s op_fro += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Hunter
scoreboard players operation @s op_hun += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Overload
scoreboard players operation @s op_ove += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Stunning
scoreboard players operation @s op_stu += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Transfiguration
scoreboard players operation @s op_tra += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Vanquisher
scoreboard players operation @s op_van += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Vicious
scoreboard players operation @s op_vic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s op_fir += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
scoreboard players operation @s op_sha += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Enchantments[{id:"minecraft:smite"}].lvl
scoreboard players operation @s op_smi += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl
scoreboard players operation @s op_ban += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.opportunist:enchants offhand.tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Slot:"mainhand"}].Amount
execute if data storage ca.opportunist:enchants offhand.tag.AttributeModifiers[{AttributeName:"generic.attack_damage",Slot:"mainhand"}].Amount run scoreboard players set @s op_dmg 1
scoreboard players operation @s op_dmg += $temp ca.susu
