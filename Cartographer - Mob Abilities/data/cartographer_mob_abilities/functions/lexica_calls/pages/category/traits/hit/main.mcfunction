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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Beastiary","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Mob Abilities.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"---[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Ability Traits","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for ability traits.","color":"#FFF4D9","italic":true}]}}]
tellraw @s [{"text":"------[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Damage (On-Hit)","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for traits that trigger when abilities do damage.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/blazing=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Blazing","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Blazing.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3511"}}]
execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/glacial=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Glacial","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Glacial.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3521"}}]
execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/horrifying=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Horrifying","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Horrifying.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3531"}}]
execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/overloading=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Overloading","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Overloading.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3541"}}]
execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/venemous=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Venemous","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Venemous.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3551"}}]
execute if entity @s[advancements={cartographer_mob_abilities:trait/hit/zephyrous=true}] run tellraw @s [{"text":"---------[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Zephyrous","color":"#FF7D7D","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Zephyrous.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 3561"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 305"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

