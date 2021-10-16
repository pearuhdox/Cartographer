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

tellraw @s [{"text":"[➤] ","color":"gray","bold":true,"italic":false},{"bold":false,"text":"Knowledge and You: A Guide to the Lexica","color":"gray","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Information on how to use this book!","color":"#FFF4D9","italic":true}]}}]

tellraw @s {"text":"Click on brightly colored text in this book to access detailed information on any Cartographer mechanic you have already discovered.","color":"#FFF4D9","italic":false}
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"\"[➤]\" signifies a tab. Their corresponding text can be clicked to expand that section or specific page.","color":"#FFF4D9","italic":false}
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"Bracketed colored text inside descriptions will take you to the page of the colored text when clicked on.","color":"#FFF4D9","italic":false}
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"The \"[⏎]\" button below will return you up one page to the tab directly above the one you are currently looking at.","color":"#FFF4D9","italic":false}
tellraw @s [{"text":" ","color":"#FFF4D9","italic":false}]

tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}
tellraw @s [{"text":"[⏎] ","color":"green","bold":true,"italic":false},{"text":"Return","color":"green","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return up one page.","color":"#FFF4D9","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:lexica/manual"}}]
tellraw @s {"text":"------------------------------------------","color":"#ACFFA6","bold":true}

