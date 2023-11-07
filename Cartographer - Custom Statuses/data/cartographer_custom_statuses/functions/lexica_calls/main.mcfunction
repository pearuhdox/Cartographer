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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Afflictions","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Custom Statuses.","color":"#FFF4D9","italic":true}]}}]

execute if entity @s[advancements={cartographer_custom_statuses:bleed=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Bleeding","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Bleeding.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 101"}}]
execute if entity @s[advancements={cartographer_custom_statuses:blindness=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Blindness","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Blindness.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 102"}}]
execute if entity @s[advancements={cartographer_custom_statuses:brittle=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Brittle","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Brittle.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 103"}}]
execute if entity @s[advancements={cartographer_custom_statuses:charmed=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Charmed","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Charmed.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 109"}}]
execute if entity @s[advancements={cartographer_custom_statuses:cloaked=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Cloaking","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Cloaking.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 104"}}]
execute if entity @s[advancements={cartographer_custom_statuses:vulnerability=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Expose","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Expose.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 105"}}]
execute if entity @s[advancements={cartographer_custom_statuses:infected=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Infection","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Infection.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 106"}}]
execute if entity @s[advancements={cartographer_custom_statuses:morph=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Polymorphed","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Morph.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 107"}}]
execute if entity @s[advancements={cartographer_custom_statuses:oiled=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Oiled","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Oiled.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 108"}}]
execute if entity @s[advancements={cartographer_custom_statuses:shackled=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shackled","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shackled.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 110"}}]
execute if entity @s[advancements={cartographer_custom_statuses:shock=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Shocking","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Shocking.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 111"}}]
execute if entity @s[advancements={cartographer_custom_statuses:stunned=true}] run tellraw @s [{"text":"---[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"bold":false,"text":"Stun","color":"#57dec0","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"View information for Stun.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 112"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 1"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

