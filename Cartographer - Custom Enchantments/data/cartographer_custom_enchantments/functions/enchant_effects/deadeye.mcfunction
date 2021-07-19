execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 1.5
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 0.5
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 0.5

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_aim"]}

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_1","deadeye_multi"]}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_2","deadeye_multi"]}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_3","deadeye_multi"]}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_4","deadeye_multi"]}
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_7","deadeye_multi"]}

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_1","deadeye_multi"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_2","deadeye_multi"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_3","deadeye_multi"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_4","deadeye_multi"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_multi_7","deadeye_multi"]}


kill @e[type=#cartographer_core:arrow,limit=3,sort=nearest]

scoreboard players set $deadeye ca.pin_down 0
scoreboard players set $deadeye ca.rend 0
scoreboard players set $deadeye ca.conductive 0
scoreboard players set $deadeye ca.frost 0
scoreboard players set $deadeye ca.flame 0
scoreboard players set $deadeye ca.flash 0
scoreboard players set $deadeye ca.putrefy 0
scoreboard players set $deadeye ca.trueshot 0
scoreboard players set $deadeye ca.curse_encum 0

execute if score @s ca.pin_down matches 1 run scoreboard players set $deadeye ca.pin_down 1
execute if score @s ca.rend matches 1 run scoreboard players set $deadeye ca.rend 1
execute if score @s ca.conductive matches 1 run scoreboard players set $deadeye ca.conductive 1
execute if score @s ca.frost matches 1 run scoreboard players set $deadeye ca.frost 1
execute if score @s ca.flame matches 1 run scoreboard players set $deadeye ca.flame 1
execute if score @s ca.flash matches 1 run scoreboard players set $deadeye ca.flash 1
execute if score @s ca.putrefy matches 1 run scoreboard players set $deadeye ca.putrefy 1
execute if score @s ca.trueshot matches 1 run scoreboard players set $deadeye ca.trueshot 1
execute if score @s ca.curse_encum matches 1 run scoreboard players set $deadeye ca.curse_encum 1

execute store result score $x_rot ca.rotation run data get entity @s Rotation[0]
execute store result score $z_rot ca.rotation run data get entity @s Rotation[1]

tag @s add is_firing_deadeye

execute if entity @s[nbt=!{SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] if entity @s[nbt=!{Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] as @e[tag=deadeye_aim,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/bullet
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}}] as @e[tag=deadeye_multi,limit=7,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_bullet
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] as @e[tag=deadeye_multi,limit=7,sort=nearest] at @s run function cartographer_custom_enchantments:enchant_effects/deadeye/multi_bullet
