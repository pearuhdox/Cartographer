########################################
# File: Cartographer Core - Lexica / Manual
#
# Author: PearUhDox | Date: 3/24/2021
#
# Description: Runs the basic manual dialogue.
########################################

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

tellraw @s [{"text":"[➤] ","color":"#FFF4D9","bold":true,"italic":false},{"text":"Knowledge and You: A Guide to the Lexica","color":"#F04FF0","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Information on how to use this book!","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ca.lexica_trig set 2"}}]

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

function cartographer_custom_statuses:lexica_calls/header
function cartographer_custom_enchantments:lexica_calls/header
function cartographer_mob_abilities:lexica_calls/header

tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

