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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Mob Abilities.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Active Skills","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for mob skills with cooldowns and activations when in line of sight of a target.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:active/ambush=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Ambush","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Ambush.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 309"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/augmenter=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Augmenter","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Augmenter.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 310"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/barrage=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Barrage","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Barrage.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 321"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/charge=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Charger","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Charge.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 311"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/command=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Command","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Command.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 312"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/duplicator=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Duplicator","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Duplicator.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 313"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/nova=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Nova Burst","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Nova Burst.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 314"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/haunt=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Haunt","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Haunt.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 315"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/healer=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Healer","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Healer.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 316"}}]
execute if entity @s[advancements={cartographer_mob_abilities:active/hookshot=true}] run tellraw @s [{"text":"------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Hookshot","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Hookshot.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 317"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Active Skills (Page 2)","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"See Page 2 of Active Skills.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 302"}}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 5"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

