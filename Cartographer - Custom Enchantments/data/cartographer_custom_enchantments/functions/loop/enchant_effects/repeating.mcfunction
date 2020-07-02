#Grab and store item from player hand
execute if entity @s[scores={repeating=1..7}] run data modify storage item:repeater path set from entity @s SelectedItem
execute if entity @s[scores={repeating=11..17}] run data modify storage item:repeater path set from entity @s Inventory[{Slot:-106b}]

data modify storage item:repeater path.Slot set value 0b
data modify block 0 0 0 Items append from storage item:repeater path

#Adjust ammo count
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:1}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:2}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:3}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:2,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:4}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:3,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:5}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:4,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:6}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:5,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:7}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:6,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=1..7},nbt={SelectedItem:{tag:{Charged:0b,Ammo:8}}}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:1}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:2}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:3}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:2,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:4}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:3,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:5}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:4,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:6}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:5,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:7}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:6,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}
execute if entity @s[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b,Ammo:8}}]}] run data modify block 0 0 0 Items[0].tag merge value {Ammo:7,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}

#Fix Multishot
execute unless block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",tag:{Ammo:0}}]} run execute if block 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 0 0 0 Items[0].tag merge value {ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}


#Place item in player hand
execute if entity @s[scores={repeating=1..7}] run loot replace entity @s weapon.mainhand 1 mine 0 0 0 air{drop_contents:1b}
execute if entity @s[scores={repeating=11..17}] run loot replace entity @s weapon.offhand 1 mine 0 0 0 air{drop_contents:1b}

execute at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 2

scoreboard players set @s helper_repeat 0