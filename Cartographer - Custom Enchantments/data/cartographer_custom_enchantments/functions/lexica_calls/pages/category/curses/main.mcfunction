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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Custom Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Enchantments.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Curse Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:curse/clumsiness=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Clumsiness","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Clumsiness.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 290"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/drowning=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Drowning","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Drowning.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 291"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/flammability=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Flammability","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Flammability.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 293"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/irreparability=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Irreparability","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Irreparability.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 294"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/jinxing=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Jinxing","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Jinxing.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 295"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/malevolence=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Malevolence","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Malevolence.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 296"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/regret=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Regret","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Regret.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 297"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/rusting=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Rusting","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Rusting.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 298"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/shattering=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Curse of Shattering","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Curse of Shattering.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 299"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:curse/twohanded=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Two Handed","color":"red","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Two Handed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 300"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

