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
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Active Skills","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for enchants that activate on active attacks.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:active/laser=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Laser","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Laser.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 319"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/orbit=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Orbit","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Orbit.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 322"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/quickdraw=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Quickdraw","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Quickdraw.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 323"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/rift=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Rift","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Rift.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 324"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/sidearm=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Sidearm","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Sidearm.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 318"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/smash=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Smash","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Smash.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 325"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/sniper_shot=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Sniper Shot","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Sniper Shot.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 320"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/summoner=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Summoner","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Summoner.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 329"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/storm=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Storm","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Storm.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 326"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/sweep=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Sweep","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Sweep.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 327"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/volley=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Volley","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Volley.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 328"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Active Skills (Page 1)","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 1 of Active Skills.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 301"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 5"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

