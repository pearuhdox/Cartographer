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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Enchantments.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Passive","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"------[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Skin","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:passive/skin/fireskin=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Fireskin","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Fireskin.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3412"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/skin/scaleskin=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Scaleskin","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Scaleskin.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3422"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/skin/shimmerskin=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shimmerskin","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shimmerskin.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3432"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/skin/shroudskin=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shroudskin","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shroudskin.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3442"}}]
execute if entity @s[advancements={cartographer_mob_abilities:passive/skin/waterskin=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Waterskin","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Waterskin.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3452"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 304"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

