tag @s add gmr_frozen
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"Your comprehensive guide to foreign facts.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Nova Burst","color":"yellow","bold":true,"italic":false}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"Description: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"The enemy charges up. After a delay, releases a burst of magical energy around it. The burst deals damage to players within.","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Applicable Mobs: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"All Hostile Mobs","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Cooldown: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"10 Seconds","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Damage: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"200% (Base Attack Damage)","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 301"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
