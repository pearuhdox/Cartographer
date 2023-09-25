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
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Passive Enchantments - 3","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate passively.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_enchantments:passive/regeneration=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Regeneration","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Regeneration.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 248"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/resourceful=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Resourceful","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Resourceful.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 249"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/satiation=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Satiation","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Satiation.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2001"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/second_wind=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Second Wind","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Second Wind.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2002"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/shielding=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shielding","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shielding.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2003"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/sprint_dash=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Sprint Dash","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Sprint Dash.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2004"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/spurs=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Spurs","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Spurs.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2006"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/stalwart=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Stalwart","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Stalwart.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2007"}}]
execute if entity @s[advancements={cartographer_custom_enchantments:passive/starfall=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Starfall","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Starfall.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2005"}}]


tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Passive Enchantments (Page 2)","color":"#8AFFEB","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 2 of Passive Enchantments.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 204"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 4"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

