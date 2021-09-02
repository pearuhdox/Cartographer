#Grab and store item from player hand
function suso.player_data:get/do

execute if entity @s[scores={ca.repeating=1..7}] run data modify storage suso:pldata working_data.repeating set from entity @s SelectedItem
execute if entity @s[scores={ca.repeating=11..17}] run data modify storage suso:pldata working_data.repeating set from entity @s Inventory[{Slot:-106b}]

data modify storage suso:pldata working_data.repeating.Slot set value 0b
data modify block 4206900 0 4206901 Items append from storage suso:pldata working_data.repeating

#Adjust ammo count
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=1}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=2}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=3}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=4}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=5}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=6}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=7}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={ca.repeating=1..7,ca.ammo_main=8}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}

execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=1}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:0}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=2}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:1,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=3}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:2,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=4}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:3,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=5}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:4,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=6}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:5,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=7}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:6,Charged:1b}
execute if entity @s[scores={ca.repeating=11..17,ca.ammo_off=8}] run data modify block 4206900 0 4206901 Items[0].tag merge value {Ammo:7,Charged:1b}

#Mainhand Reload
execute if score @s ca.repeating matches 1..7 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles set value []
execute if score @s ca.repeating matches 1..7 unless score @s ca.ammo_main matches ..1 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute if score @s ca.repeating matches 1..7 run data modify block 4206900 0 4206901 Items[0].tag.LastFired set from block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Mainhand - Fix Multishot
execute if score @s ca.repeating matches 1..7 unless score @s ca.ammo_main matches ..1 if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute if score @s ca.repeating matches 1..7 unless score @s ca.ammo_main matches ..1 if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Offhand Reload
execute if score @s ca.repeating matches 11..17 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles set value []
execute if score @s ca.repeating matches 11..17 unless score @s ca.ammo_off matches ..1 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute if score @s ca.repeating matches 11..17 run data modify block 4206900 0 4206901 Items[0].tag.LastFired set from block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Offhand - Fix Multishot
execute if score @s ca.repeating matches 11..17 unless score @s ca.ammo_off matches ..1 if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]
execute if score @s ca.repeating matches 11..17 unless score @s ca.ammo_off matches ..1 if block 4206900 0 4206901 minecraft:purple_shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]} run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles append from block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Empty Charged Projectiles if no ammo (Mainhand)
execute if score @s ca.repeating matches 1..7 if score @s ca.ammo_main matches ..1 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles set value []

#Empty Charged Projectiles if no ammo (Offhand)
execute if score @s ca.repeating matches 11..17 if score @s ca.ammo_off matches ..1 run data modify block 4206900 0 4206901 Items[0].tag.ChargedProjectiles set value []

data remove block 4206900 0 4206901 Items[0].tag.Quiver[0]

#Save the data back to the player array
function suso.player_data:put/do

#Place item in player hand
execute if entity @s[scores={ca.repeating=1..7}] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206901 air{drop_contents:1b}
execute if entity @s[scores={ca.repeating=11..17}] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206901 air{drop_contents:1b}

execute at @s run playsound minecraft:item.crossbow.loading_end player @a[distance=..8] ~ ~ ~ 10 2

scoreboard players set @s ca.rpt_cdl 0

#Run display for subtitle
tag @a[scores={ca.ui_location=1}] remove showing_repeating