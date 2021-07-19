function suso.player_data:get/do

execute if entity @s[scores={ca.repeating=1..7}] run data modify storage suso:pldata working_data.repeating set from entity @s SelectedItem
execute if entity @s[scores={ca.repeating=11..17}] run data modify storage suso:pldata working_data.repeating set from entity @s Inventory[{Slot:-106b}]

data modify storage suso:pldata working_data.repeating.Slot set value 0b
data modify block 4206900 0 4206901 Items append from storage suso:pldata working_data.repeating

data modify storage suso:pldata working_data.RepeatingList set value []

#Consume the necessary arrows. In creative, no arrows are consumed, and stock is fully loaded.
scoreboard players set @s ca.ammo 0

#Mainhand
execute if entity @s[scores={ca.repeating=1},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 2
execute if entity @s[scores={ca.repeating=2},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 3
execute if entity @s[scores={ca.repeating=3},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 4
execute if entity @s[scores={ca.repeating=4},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 5
execute if entity @s[scores={ca.repeating=5},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 6
execute if entity @s[scores={ca.repeating=6},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 7
execute if entity @s[scores={ca.repeating=7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s ca.ammo 8

#Offhand
execute if entity @s[scores={ca.repeating=11},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 2
execute if entity @s[scores={ca.repeating=12},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 3
execute if entity @s[scores={ca.repeating=13},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 4
execute if entity @s[scores={ca.repeating=14},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 5
execute if entity @s[scores={ca.repeating=15},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 6
execute if entity @s[scores={ca.repeating=16},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 7
execute if entity @s[scores={ca.repeating=17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s ca.ammo 8

scoreboard players set $ammo_save ca.ammo 0

#Create our loaded inventory of arrows.
function cartographer_custom_enchantments:enchant_effects/repeating/recurse
scoreboard players operation @s ca.ammo = $ammo_save ca.ammo

data modify block 4206900 0 4206901 Items[0].tag.Quiver set value []
data modify block 4206900 0 4206901 Items[0].tag.Quiver set from storage suso:pldata working_data.RepeatingList

#Fix Crossbow
execute if entity @s[scores={ca.ammo=1,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={ca.ammo=2,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={ca.ammo=3,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={ca.ammo=4,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={ca.ammo=5,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={ca.ammo=6,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={ca.ammo=7,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}
execute if entity @s[scores={ca.ammo=8,ca.repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,Charged:1b}

execute if entity @s[scores={ca.ammo=1,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={ca.ammo=2,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={ca.ammo=3,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={ca.ammo=4,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={ca.ammo=5,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={ca.ammo=6,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={ca.ammo=7,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}
execute if entity @s[scores={ca.ammo=8,ca.repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,Charged:1b}

#Save the data back to the player array
function suso.player_data:put/do


execute if entity @s[scores={ca.repeating=1..7}] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={ca.repeating=11..17}] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2

#Run display for subtitle
tag @a[scores={ca.ui_location=1}] remove showing_repeating

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" reloaded Repeating.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]