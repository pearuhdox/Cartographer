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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Afflictions","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Statuses.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_statuses:bleed=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Bleeding","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Bleeding.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 101"}}]
execute if entity @s[advancements={cartographer_custom_statuses:blindness=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Blindness","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Blindness.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 102"}}]
execute if entity @s[advancements={cartographer_custom_statuses:cloaked=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Cloaked","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Cloaked.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 103"}}]
execute if entity @s[advancements={cartographer_custom_statuses:possess=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Possessed","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Possessed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 104"}}]
execute if entity @s[advancements={cartographer_custom_statuses:vulnerability=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Exposed","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Exposed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 105"}}]
execute if entity @s[advancements={cartographer_custom_statuses:infection=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Infection","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Infection.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 106"}}]
execute if entity @s[advancements={cartographer_custom_statuses:shock=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shocking","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shocking.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 107"}}]
execute if entity @s[advancements={cartographer_custom_statuses:stunned=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Stunned","color":"#CC73FF","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Stunned.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 108"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 1"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

