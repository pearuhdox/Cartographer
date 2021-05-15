data modify storage ca.susu:enchants temp_item set value {}
data modify storage ca.susu:enchants temp_item set from entity @s Inventory[{Slot:-106b}]

execute if data storage ca.susu:enchants temp_item{id:"minecraft:leather_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:leather_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:leather_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:leather_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:golden_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:golden_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:golden_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:golden_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:chainmail_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:chainmail_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:chainmail_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:chainmail_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:iron_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:iron_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:iron_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:iron_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:diamond_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:diamond_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:diamond_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:diamond_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:netherite_boots"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:netherite_leggings"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:netherite_chestplate"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:netherite_helmet"} run data modify storage ca.susu:enchants temp_item set value {}

execute if data storage ca.susu:enchants temp_item{id:"minecraft:turtle_helmet"} run data modify storage ca.susu:enchants temp_item set value {}
execute if data storage ca.susu:enchants temp_item{id:"minecraft:elytra"} run data modify storage ca.susu:enchants temp_item set value {}

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Adrenaline
scoreboard players operation @s adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Agility
scoreboard players operation @s agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Aquadynamic
scoreboard players operation @s aquadynamic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Current
scoreboard players operation @s current += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.FatigueCleansing
scoreboard players operation @s f_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.PoisonCleansing
scoreboard players operation @s p_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.WeaknessCleansing
scoreboard players operation @s w_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.SlownessCleansing
scoreboard players operation @s s_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.WitherCleansing
scoreboard players operation @s wi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Concealed
scoreboard players operation @s concealed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Conductive
scoreboard players operation @s conductive += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Deadeye
scoreboard players operation @s deadeye += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Evasion
scoreboard players operation @s evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Energetic
scoreboard players operation @s energetic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Flash
scoreboard players operation @s flash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Frenzy
scoreboard players operation @s frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Frost
scoreboard players operation @s frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Hydraulic
scoreboard players operation @s hydraulic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Lifesteal
scoreboard players operation @s lifesteal += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Opportunist
scoreboard players operation @s opportunist += $temp ca.susu

execute if data storage ca.susu:enchants temp_item{id:"minecraft:bow"} run scoreboard players add @s opportunist 10
execute if data storage ca.susu:enchants temp_item{id:"minecraft:crossbow"} run scoreboard players add @s opportunist 10

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.PinDown
scoreboard players operation @s pin_down += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.PointBlank
scoreboard players operation @s point_blank += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Putrefy
scoreboard players operation @s putrefy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Rally
scoreboard players operation @s rally += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Repeating
execute if score $temp ca.susu matches 1.. run scoreboard players add $temp ca.susu 10
scoreboard players operation @s repeating += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Regeneration
scoreboard players operation @s regeneration += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Rend
scoreboard players operation @s rend += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Ricochet
scoreboard players operation @s ricochet += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Satiation
scoreboard players operation @s satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.SecondWind
scoreboard players operation @s second_wind += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Sharpshot
scoreboard players operation @s sharpshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Splintering
scoreboard players operation @s splintering += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Spurs
scoreboard players operation @s spurs += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Tempest
scoreboard players operation @s tempest += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.TempoTheft
scoreboard players operation @s tempo_theft += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Trueshot
scoreboard players operation @s trueshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Vengeance
scoreboard players operation @s vengeance += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Volatile
scoreboard players operation @s volatile += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.CurseEncumbering
scoreboard players operation @s curse_encumber += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Thorns
scoreboard players operation @s thorns += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Loyalty
scoreboard players operation @s loyalty += $temp ca.susu
execute if score @s loyalty matches 1..5 run scoreboard players add @s loyalty 10

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
scoreboard players operation @s fire_aspect += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Enchantments[{id:"minecraft:flame"}].lvl
scoreboard players operation @s flame += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.Enchantments[{id:"minecraft:power"}].lvl
scoreboard players operation @s power += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants temp_item.tag.CurseTwoHanded
execute if data storage ca.susu:enchants temp_item.tag.CurseTwoHanded run scoreboard players add @s curse_two_handed 1
scoreboard players operation @s curse_two_handed += $temp ca.susu