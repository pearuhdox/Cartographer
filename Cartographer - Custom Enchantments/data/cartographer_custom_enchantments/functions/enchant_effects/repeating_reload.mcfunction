function suso.player_data:get/do

execute if entity @s[scores={repeating=1..7}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s SelectedItem
execute if entity @s[scores={repeating=11..17}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.repeating.Slot set value 0b
data modify block 4206900 0 4206901 Items append from storage cartographer_core:pldata working_data.repeating

data modify storage cartographer_core:pl_data working_data.RepeatingList set value []

#Consume the necessary arrows. In creative, no arrows are consumed, and stock is fully loaded.
scoreboard players set @s helper_ammo 0

#Mainhand
execute if entity @s[scores={repeating=1},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 2
execute if entity @s[scores={repeating=2},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 3
execute if entity @s[scores={repeating=3},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 4
execute if entity @s[scores={repeating=4},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 5
execute if entity @s[scores={repeating=5},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 6
execute if entity @s[scores={repeating=6},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 7
execute if entity @s[scores={repeating=7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 8

#Offhand
execute if entity @s[scores={repeating=11},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 2
execute if entity @s[scores={repeating=12},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 3
execute if entity @s[scores={repeating=13},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 4
execute if entity @s[scores={repeating=14},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 5
execute if entity @s[scores={repeating=15},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 6
execute if entity @s[scores={repeating=16},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 7
execute if entity @s[scores={repeating=17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 8

scoreboard players set $ammo_save helper_ammo 0

#Create our loaded inventory of arrows.
function cartographer_custom_enchantments:enchant_effects/repeating_recurse
scoreboard players operation @s helper_ammo = $ammo_save helper_ammo

data modify block 4206900 0 4206901 Items[0].tag.Quiver set value []
data modify block 4206900 0 4206901 Items[0].tag.Quiver set from storage cartographer_core:pl_data working_data.RepeatingList

#Fix Crossbow
execute if entity @s[scores={helper_ammo=1,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={helper_ammo=2,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={helper_ammo=3,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={helper_ammo=4,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={helper_ammo=5,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={helper_ammo=6,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={helper_ammo=7,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}
execute if entity @s[scores={helper_ammo=8,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,Charged:1b}

execute if entity @s[scores={helper_ammo=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={helper_ammo=2,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={helper_ammo=3,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={helper_ammo=4,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={helper_ammo=5,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={helper_ammo=6,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={helper_ammo=7,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}
execute if entity @s[scores={helper_ammo=8,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,Charged:1b}

#Save the data back to the player array
function suso.player_data:put/do


execute if entity @s[scores={repeating=1..7}] run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={repeating=11..17}] run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2

#Run display for subtitle
tag @a[scores={ui_location=1}] remove showing_repeating

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" reloaded Repeating.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]