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
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Ranged Enchantments","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on ranged attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:auto_charge=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Auto Charge","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Auto Charge.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 250"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:conductive=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Conductive","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Conductive.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 251"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:current=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Current","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Current.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 252"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:deadeye=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Deadeye","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Deadeye.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 253"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:flash=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Flash","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Flash.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 254"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:frost=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Frost","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Frost.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 255"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:pin_down=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Pin Down","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Pin Down.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 256"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:point_blank=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Point Blank","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Point Blank.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 257"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:putrefy=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Putrefy","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Putrefy.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 258"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:repeating=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Repeating","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Repeating.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 259"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Ranged Enchantments (Page 2)","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 2 of Ranged Enchantments.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 206"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

schedule function cartographer_core:load/command_feedback 1t