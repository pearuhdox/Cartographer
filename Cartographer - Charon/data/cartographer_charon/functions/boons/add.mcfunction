scoreboard players add @s ca.boons 1
tellraw @s {"text":"You have been granted a Boon!","color":"#EB87FF","bold":false,"italic":false}
tellraw @s [{"text":"Boons Remaining: ","color":"gold","bold":false,"italic":false},{"score":{"name":"@s","objective":"ca.boons"},"color":"green","bold":true,"italic":false}]

playsound minecraft:block.bell.resonate player @s ~ ~ ~ 0.8 2