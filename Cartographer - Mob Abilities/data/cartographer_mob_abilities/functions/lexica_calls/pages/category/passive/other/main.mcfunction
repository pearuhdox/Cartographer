scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"Your comprehensive guide to foreign facts.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Mob Abilities.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Passive","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"------[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Other","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:passive/other/breaker=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Breaker","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Breaker.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3413"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/enderport=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Enderport","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Enderport.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3423"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/potion_bag=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Potion Bag","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Potion Bag.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3433"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/quiver=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Quiver","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Quiver.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3443"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/reflect=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Reflect","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Reflect.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3453"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/summoner=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Summoner","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Summoner.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3463"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/other/touch=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Touch","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Touch.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3473"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 304"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

