#Get an enemy with Reflect's health.
execute store result score @s reflect_past run data get entity @s Health

#Set Reflect enemies to have reflect shields in offhand.
#execute as @s[tag=!reflect_setup] at @s run data modify entity @s HandItems[1] set value {id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Reflector","color":"aqua","italic":false}'},Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}],BlockEntityTag:{Base:3,Patterns:[{Color:0,Pattern:"dls"},{Color:0,Pattern:"gru"},{Color:0,Pattern:"gra"},{Color:8,Pattern:"bo"}]}}}

#tag @s[tag=!reflect_setup] add reflect_setup

#Reflect Enemies Create Particles when players are detected "in ranges"
#execute if entity @a[distance=..7] run particle cloud ^ ^1 ^1 0.3 0.5 0.3 0.05 3 normal