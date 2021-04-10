gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75

execute as @s run function cartographer_core:load/spacer

scoreboard players enable @s lexica_trig

tellraw @s [{"text":"❰","color":"green","bold":true},{"text":"⊰ Lexica Cartographia ⊱","color":"#ACFFA6","bold":true},{"text":"❱","color":"green","bold":true},{"text":"---------------------------","color":"#ACFFA6","bold":true}]
tellraw @s {"text":"Your comprehensive guide to foreign facts.","color":"#ACFFA6","bold":false,"italic":true}
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

tellraw @s [{"text":"Click on an option to see more information!","color":"#FFF4D9","italic":true}]
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Custom Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Enchantments.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Melee Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on melee attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:committed=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Committed","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Committed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 210"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:decay=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Decay","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Decay.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 211"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:duelist=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Duelist","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Duelist.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 212"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:echo=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Echo","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Echo.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 213"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:evocation=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Evocation","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Evocation.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 214"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:executioner=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Executioner","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Executioner.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 215"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:frostbite=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Frostbite","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Frostbite.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 216"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:hunter=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Hunter","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Hunter.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 217"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:overload=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Overload","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Overload.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 218"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:stunning=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Stunning","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Stunning.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 219"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Melee Enchantments (Page 2)","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 2 of Melee Enchantments.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 202"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

schedule function cartographer_core:load/command_feedback 1t