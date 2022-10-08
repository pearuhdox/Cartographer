scoreboard players remove @s ca.boons 1
tellraw @s {"text":"A Boon has been taken away to protect your items!","color":"#EB87FF","bold":false,"italic":false}
execute if score @s ca.boons matches 1.. run tellraw @s [{"text":"Boons Remaining: ","color":"gold","bold":false,"italic":false},{"score":{"name":"@s","objective":"ca.boons"},"color":"green","bold":true,"italic":false}]
execute if score @s ca.boons matches 0 run tellraw @s [{"text":"☠ ","color":"red","bold":false,"italic":false},{"text":"Out Of Boons","bold":true,"italic":false},{"text":" ☠"}]

execute if score @s ca.boons matches 1.. run playsound minecraft:block.bell.resonate player @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.boons matches 0 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..8] ~ ~ ~ 1 2

playsound minecraft:block.sculk_vein.place player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.hurt player @a[distance=..8] ~ ~ ~ 0.8 0.6

#Fix death count to be accurate for items
scoreboard players remove @s charon.death_count 1