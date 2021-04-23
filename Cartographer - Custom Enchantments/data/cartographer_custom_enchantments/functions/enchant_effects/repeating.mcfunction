#Grab and store item from player hand
function cartographer_core:data_get/do

execute if entity @s[scores={repeating=1..7}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s SelectedItem
execute if entity @s[scores={repeating=11..17}] run data modify storage cartographer_core:pldata working_data.repeating set from entity @s Inventory[{Slot:-106b}]

data modify storage cartographer_core:pldata working_data.repeating.Slot set value 0b
data modify block 4206900 0 4206901 Items append from storage cartographer_core:pldata working_data.repeating


#Adjust ammo count
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:1}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:2}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:3}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:4}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:5}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:6}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:7}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:8}}}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}

execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:1}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:2}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:3}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:4}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:5}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:6}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:7}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:8}}]}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}

execute unless block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles set value []
execute unless block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute unless block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run data modify block 4206900 0 4206901 Items[0].tag.LastFired set from block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Fix Multishot
execute unless block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run execute if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute unless block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run execute if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]

data remove block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Save the data back to the player array
function cartographer_core:data_put/do

#Place item in player hand
execute if entity @s[scores={repeating=1..7}] run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={repeating=11..17}] run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 2

scoreboard players set @s helper_repeat 0

#Run display for subtitle
tag @a[scores={ui_location=1}] remove showing_repeating