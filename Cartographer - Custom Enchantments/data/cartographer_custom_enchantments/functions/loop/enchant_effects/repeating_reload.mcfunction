function cartographer_core:data_get/do

execute if entity @s[scores={repeating=1..7}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s SelectedItem
execute if entity @s[scores={repeating=11..17}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.repeating.Slot set value 0b
data modify block 4206900 0 4206901 Items append from storage cartographer_core:pldata working_data.repeating



#Consume the necessary arrows. In creative, no arrows are consumed, and stock is fully loaded.
scoreboard players set @s helper_ammo 0

#Mainhand
execute if entity @s[gamemode=!creative,scores={repeating=1},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 1
execute if entity @s[gamemode=!creative,scores={repeating=2},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 2
execute if entity @s[gamemode=!creative,scores={repeating=3},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 3
execute if entity @s[gamemode=!creative,scores={repeating=4},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 4
execute if entity @s[gamemode=!creative,scores={repeating=5},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 5
execute if entity @s[gamemode=!creative,scores={repeating=6},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 6
execute if entity @s[gamemode=!creative,scores={repeating=7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] store result score @s helper_ammo run clear @s arrow 7

execute if entity @s[gamemode=creative,scores={repeating=1},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 1
execute if entity @s[gamemode=creative,scores={repeating=2},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 2
execute if entity @s[gamemode=creative,scores={repeating=3},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 3
execute if entity @s[gamemode=creative,scores={repeating=4},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 4
execute if entity @s[gamemode=creative,scores={repeating=5},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 5
execute if entity @s[gamemode=creative,scores={repeating=6},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 6
execute if entity @s[gamemode=creative,scores={repeating=7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run scoreboard players set @s helper_ammo 7

#Offhand
execute if entity @s[gamemode=!creative,scores={repeating=11},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 1
execute if entity @s[gamemode=!creative,scores={repeating=12},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 2
execute if entity @s[gamemode=!creative,scores={repeating=13},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 3
execute if entity @s[gamemode=!creative,scores={repeating=14},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 4
execute if entity @s[gamemode=!creative,scores={repeating=15},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 5
execute if entity @s[gamemode=!creative,scores={repeating=16},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 6
execute if entity @s[gamemode=!creative,scores={repeating=17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] store result score @s helper_ammo run clear @s arrow 7

execute if entity @s[gamemode=creative,scores={repeating=11},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 1
execute if entity @s[gamemode=creative,scores={repeating=12},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 2
execute if entity @s[gamemode=creative,scores={repeating=13},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 3
execute if entity @s[gamemode=creative,scores={repeating=14},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 4
execute if entity @s[gamemode=creative,scores={repeating=15},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 5
execute if entity @s[gamemode=creative,scores={repeating=16},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 6
execute if entity @s[gamemode=creative,scores={repeating=17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run scoreboard players set @s helper_ammo 7


#Fix Crossbow
execute if entity @s[scores={helper_ammo=0,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=1,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=2,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=3,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=4,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=5,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=6,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=7,repeating=1..7},nbt={SelectedItem:{tag:{Charged:1b,Ammo:0}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute if entity @s[scores={helper_ammo=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=2,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=3,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=4,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=5,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=6,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={helper_ammo=7,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:8,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

#Save the data back to the player array
function cartographer_core:data_put/do

#Fix Multishot
execute if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}

execute if entity @s[scores={repeating=1..7}] run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={repeating=11..17}] run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:block.chest.locked player @a[distance=..8] ~ ~ ~ 10 2

#Run display for subtitle
tag @a[scores={ui_location=1}] remove showing_repeating