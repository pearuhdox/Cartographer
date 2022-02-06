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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Custom Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Enchantments.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Ranged Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:ranged/hydraulic=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Hydraulic","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Hydraulic.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 260"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/infect=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Infect","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Infect.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 261"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/overcharge=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Overcharge","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Overcharge.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 262"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/point_blank=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Point Blank","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Point Blank.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 263"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/possess=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Possess","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Possess.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 249"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/repeater=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Repeating","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Repeating.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 264"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/ricochet=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Ricochet","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Ricochet.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 265"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/sharpshot=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Sharpshot","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Sharpshot.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 266"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/tempo_theft=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Tempo Theft","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Tempo Theft.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 267"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/tempest=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Tempest","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Tempest.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 268"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:ranged/trueshot=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Trueshot","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Trueshot.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 269"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Ranged Enchantments (Page 1)","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 1 of Ranged Enchantments.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 205"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

