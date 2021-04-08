playsound minecraft:entity.firework_rocket.large_blast player @s ~ ~ ~ 5 1.5

kill @e[type=#cartographer_core:arrow,limit=3,sort=nearest]

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["deadeye_aim"]}

execute if score @s frost matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add frost
execute if score @s flash matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add flash
execute if score @s conductive matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add conductive
execute if score @s rend matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add rend
execute if score @s putrefy matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add putrefy
execute if score @s pin_down matches 1.. run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add pin
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame"}]}}}] run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add flame
execute if entity @s[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame"}]}}]}] run tag @e[type=armor_stand,tag=deadeye_aim,distance=..3] add flame


tp @e[tag=deadeye_aim,limit=1,sort=nearest] ~ ~ ~ ~ ~

tp @e[tag=deadeye_aim,limit=1,sort=nearest] ~ ~ ~ facing entity @e[limit=1,type=#cartographer_core:hostile,distance=..10,sort=random,nbt={HurtTime:0s}] feet

scoreboard players set @e[tag=deadeye_aim,limit=1,sort=nearest] helper_raycast 10

execute as @e[tag=deadeye_aim,limit=1,sort=nearest] at @s positioned ~ ~1.2 ~ run function cartographer_custom_enchantments:enchant_effects/deadeye_raycast
