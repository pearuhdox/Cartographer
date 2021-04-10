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
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Passive Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate passively.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:adrenaline=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Adrenaline","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Adrenaline.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 230"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:aquadynamic=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Aquadynamic","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Aquadynamic.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 231"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:cleansing=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Cleansing","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Cleansing.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 232"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:concealed=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Concealed","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Concealed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 233"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:energetic=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Energetic","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Energetic.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 234"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:evasion=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Evasion","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Evasion.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 235"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:frenzy=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Frenzy","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Frenzy.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 236"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:lifesteal=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Lifesteal","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Lifesteal.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 237"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:regeneration=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Regeneration","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Regeneration.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 238"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:satiation=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Satiation","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Satiation.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 239"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Passive Enchantments (Page 2)","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 2 of Passive Enchantments.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 204"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

schedule function cartographer_core:load/command_feedback 1t