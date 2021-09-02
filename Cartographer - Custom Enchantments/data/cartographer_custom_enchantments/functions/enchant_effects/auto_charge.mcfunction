#Debug Message
tellraw @a[tag=debug,scores={ca.auto_charge=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Auto Charge.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

tag @s add doing_auto_charge

#Sfx
execute if entity @s[scores={ca.auto_charge=1..}] at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 0.8

#Recharging
execute if entity @s[scores={ca.auto_charge=1}] run data modify storage item:load path set from entity @s Inventory[{Slot:0b}]
execute if entity @s[scores={ca.auto_charge=2}] run data modify storage item:load path set from entity @s Inventory[{Slot:1b}]
execute if entity @s[scores={ca.auto_charge=3}] run data modify storage item:load path set from entity @s Inventory[{Slot:2b}]
execute if entity @s[scores={ca.auto_charge=4}] run data modify storage item:load path set from entity @s Inventory[{Slot:3b}]
execute if entity @s[scores={ca.auto_charge=5}] run data modify storage item:load path set from entity @s Inventory[{Slot:4b}]
execute if entity @s[scores={ca.auto_charge=6}] run data modify storage item:load path set from entity @s Inventory[{Slot:5b}]
execute if entity @s[scores={ca.auto_charge=7}] run data modify storage item:load path set from entity @s Inventory[{Slot:6b}]
execute if entity @s[scores={ca.auto_charge=8}] run data modify storage item:load path set from entity @s Inventory[{Slot:7b}]
execute if entity @s[scores={ca.auto_charge=9}] run data modify storage item:load path set from entity @s Inventory[{Slot:8b}]
execute if entity @s[scores={ca.auto_charge=10}] run data modify storage item:load path set from entity @s Inventory[{Slot:-106b}]

data modify storage item:load path.Slot set value 0b
data modify block 4206901 0 4206900 Items append from storage item:load path

scoreboard players set $auto_repeat ca.repeating 0
scoreboard players set $auto_repeat ca.auto_charge 0

execute store result score $auto_repeat ca.repeating run data get storage item:load path.tag.CustomEnchantments[{id:"repeating"}].lvl
execute store result score $auto_repeat ca.auto_charge run data get storage item:load path.tag.Ammo

scoreboard players add $auto_repeat ca.auto_charge 1

execute if score $auto_repeat ca.repeating matches 1 if score $auto_repeat ca.auto_charge matches 3.. run scoreboard players set $auto_repeat ca.auto_charge 2
execute if score $auto_repeat ca.repeating matches 2 if score $auto_repeat ca.auto_charge matches 4.. run scoreboard players set $auto_repeat ca.auto_charge 3
execute if score $auto_repeat ca.repeating matches 3 if score $auto_repeat ca.auto_charge matches 5.. run scoreboard players set $auto_repeat ca.auto_charge 4
execute if score $auto_repeat ca.repeating matches 4 if score $auto_repeat ca.auto_charge matches 6.. run scoreboard players set $auto_repeat ca.auto_charge 5
execute if score $auto_repeat ca.repeating matches 5 if score $auto_repeat ca.auto_charge matches 7.. run scoreboard players set $auto_repeat ca.auto_charge 6
execute if score $auto_repeat ca.repeating matches 6 if score $auto_repeat ca.auto_charge matches 8.. run scoreboard players set $auto_repeat ca.auto_charge 7
execute if score $auto_repeat ca.repeating matches 7 if score $auto_repeat ca.auto_charge matches 9.. run scoreboard players set $auto_repeat ca.auto_charge 8

execute if score $auto_repeat ca.auto_charge matches 1 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 1
execute if score $auto_repeat ca.auto_charge matches 2 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 2
execute if score $auto_repeat ca.auto_charge matches 3 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 3
execute if score $auto_repeat ca.auto_charge matches 4 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 4
execute if score $auto_repeat ca.auto_charge matches 5 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 5
execute if score $auto_repeat ca.auto_charge matches 6 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 6
execute if score $auto_repeat ca.auto_charge matches 7 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 7
execute if score $auto_repeat ca.auto_charge matches 8 run data modify block 4206901 0 4206900 Items[0].tag.Ammo set value 8

#Repeating Ammo Full SFX
execute if score $auto_repeat ca.repeating matches 1 if score $auto_repeat ca.auto_charge matches 2 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 2 if score $auto_repeat ca.auto_charge matches 3 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 3 if score $auto_repeat ca.auto_charge matches 4 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 4 if score $auto_repeat ca.auto_charge matches 5 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 5 if score $auto_repeat ca.auto_charge matches 6 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 6 if score $auto_repeat ca.auto_charge matches 7 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2
execute if score $auto_repeat ca.repeating matches 7 if score $auto_repeat ca.auto_charge matches 8 if score @s ca.auto_charge matches 1.. run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2

#If there is NO Repeating
execute if score $auto_repeat ca.repeating matches ..1 run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles set value [{id:"minecraft:arrow",Count:1b}]
execute if score $auto_repeat ca.repeating matches ..1 run data modify block 4206901 0 4206900 Items[0].tag.Charged set value 1b

#If there is NO Repeating but there is Multishot
execute if score $auto_repeat ca.repeating matches ..1 if block 4206901 0 4206900 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles append value {id:"minecraft:arrow",Count:1b}
execute if score $auto_repeat ca.repeating matches ..1 if block 4206901 0 4206900 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles append value {id:"minecraft:arrow",Count:1b}

#If there is Repeating
execute if score $auto_repeat ca.repeating matches 1.. run function suso.player_data:get/do

#Add to our Projectile List Array if we need to (aka there is already a loaded ammo.)
execute if score $auto_repeat ca.repeating matches 1.. if data block 4206901 0 4206900 Items[0].tag.Quiver[0].id run data modify block 4206901 0 4206900 Items[0].tag.Quiver append from block 4206901 0 4206900 Items[0].tag.Quiver[0]
execute if score $auto_repeat ca.repeating matches 1.. if data block 4206901 0 4206900 Items[0].tag.Quiver[0].id run data modify block 4206901 0 4206900 Items[0].tag.Charged set value 1b

#Create our first loaded ammo based off "LastFired".
execute if score $auto_repeat ca.repeating matches 1.. unless data block 4206901 0 4206900 Items[0].tag.Quiver[0].id run data modify block 4206901 0 4206900 Items[0].tag.Charged set value 1b
execute if score $auto_repeat ca.repeating matches 1.. unless data block 4206901 0 4206900 Items[0].tag.Quiver[0].id run data modify block 4206901 0 4206900 Items[0].tag.Quiver append from block 4206901 0 4206900 Items[0].tag.LastFired

#Then set our Ammo to load to the lowest value in the array.
execute if score $auto_repeat ca.repeating matches 1.. run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles set value []
execute if score $auto_repeat ca.repeating matches 1.. run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles append from block 4206901 0 4206900 Items[0].tag.Quiver[0]

#If there is Repeating and Multishot
execute if score $auto_repeat ca.repeating matches 1.. if block 4206901 0 4206900 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles append from storage suso:pldata working_data.RepeatingList[0]
execute if score $auto_repeat ca.repeating matches 1.. if block 4206901 0 4206900 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206901 0 4206900 Items[0].tag.ChargedProjectiles append from storage suso:pldata working_data.RepeatingList[0]

execute if score $auto_repeat ca.repeating matches 1.. run function suso.player_data:put/do

execute if entity @s[scores={ca.auto_charge=1}] in minecraft:overworld run loot replace entity @s hotbar.0 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=2}] in minecraft:overworld run loot replace entity @s hotbar.1 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=3}] in minecraft:overworld run loot replace entity @s hotbar.2 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=4}] in minecraft:overworld run loot replace entity @s hotbar.3 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=5}] in minecraft:overworld run loot replace entity @s hotbar.4 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=6}] in minecraft:overworld run loot replace entity @s hotbar.5 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=7}] in minecraft:overworld run loot replace entity @s hotbar.6 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=8}] in minecraft:overworld run loot replace entity @s hotbar.7 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=9}] in minecraft:overworld run loot replace entity @s hotbar.8 1 mine 4206901 0 4206900 air{drop_contents:1b}
execute if entity @s[scores={ca.auto_charge=10}] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206901 0 4206900 air{drop_contents:1b}

#Remove the ca.repeating tag so it shows an updated ammo count.
tag @s remove showing_repeating

scoreboard players set $auto_repeat ca.repeating 0
scoreboard players set $auto_repeat ca.auto_charge 0