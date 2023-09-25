scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"A guide by a cartographer about Cartographer.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Bloodthirst","color":"yellow","bold":true,"italic":false}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"Description: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"When the enemy dies, all enemies within 16 blocks are healed for 4 health. They can also gain a buff. The same dying mob will always give the same buff to enemies.","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"Most Bloodthirst buffs can stack up to 10 times. The buffs are:","color":"green","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Brutality gives a mob red dust particles.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"Brutality: +10% Attack Damage (Per stack, max of 100%)","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Brutality gives a mob red dust particles.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"Unrelenting: +5% Speed (Per stack, max of 50%)","color":"white","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Unrelenting gives a mob light gray dust particles.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"Sacrifical: +1 Absorption Health (Per stack, max of 10)","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Sacrificial gives a mob yellow dust particles.","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":"Deviousness: Cleanses Debuffs (Does not stack).","color":"light_purple","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Deviousness does not create additional particles.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"Alchemic: Grants Potion Effects (Based on the dying mob, does not stack).","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Alchemic does not create additional particles.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s [{"text":"Applicable Mobs: ","color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}},{"text":"All Hostile Mobs","color":"#FFF4D9","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFF4D9","italic":true}]}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 303"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

