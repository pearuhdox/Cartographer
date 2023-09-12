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
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Active Skills - 2","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on active attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:active/healer=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Healer","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Healer.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 316"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/hookshot=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Hookshot","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Hookshot.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 317"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/infuser=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Infuser","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Infuser.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3454"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/laser=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Laser","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Laser.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 319"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/orbit=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Orbit","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Orbit.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 322"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/quickdraw=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Quickdraw","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Quickdraw.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 323"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/reflect=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Reflect","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Reflect.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3453"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/rift=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Rift","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Rift.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 324"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Active Skills (Page 1)","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 1 of Active Skills.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 301"}}]
tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Active Skills (Page 3)","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 3 of Active Skills.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 306"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 5"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

