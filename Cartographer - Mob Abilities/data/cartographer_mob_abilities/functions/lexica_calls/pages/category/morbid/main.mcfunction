scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s ca.lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"A guide by a cartographer about Cartographer.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Enchantments.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Morbid Skills","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate passively.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:death/bloodthirst=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Bloodthirst","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Bloodthirst.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 330"}}]
execute if entity @s[advancements={cartographer_mob_abilities:death/corpse_crawler=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Corpse Crawler","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Corpse Crawler.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 334"}}]
execute if entity @s[advancements={cartographer_mob_abilities:death/exalted=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Exalted","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Exalted.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 335"}}]
execute if entity @s[advancements={cartographer_mob_abilities:death/parting_gift=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Parting Gift","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Parting Gift.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 336"}}]
execute if entity @s[advancements={cartographer_mob_abilities:death/pyromania=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Pyromania","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Pyromania.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 337"}}]
execute if entity @s[advancements={cartographer_mob_abilities:death/spectral=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Spectral","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Spectral.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 338"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 5"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

