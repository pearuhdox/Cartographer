playsound minecraft:block.chest.open player @a[distance=..16] ~ ~ ~ 2 0.75

particle minecraft:block minecraft:chest ~ ~0.5 ~ 0.35 0.35 0.35 0 70 normal

tellraw @p {"text":"Mimic has been removed!","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}

kill @s