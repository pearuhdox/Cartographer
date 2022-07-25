########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p run function cartographer_core:load/spacer

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @p {"text":"A list of those who brought you what you're using.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @p [{"text":"❰","color":"gold"},{"text":" PearUhDox ","color":"#B33EE6","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Creator, Director, and Primary Implementer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Suso ","color":"#61C0FF","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Technical Debt Collector","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Optimization Assistance and Bugfixing. Player Data Storage System. Infinity 3.0.","color":"#FFE0A3","italic":true},{"text":" [Link]","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Suso's download for Player Data Storage.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/5uso/Player-Data-Storage"}}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Asometric ","color":"#FFCD03","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Brought to you by Harassment\"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas. Optimization Assistance and Bugfixing.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Gibbsly ","color":"#BF0000","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Your feet, hand them over.\"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Optimization Assistance and Bugfixing. Entity Hit Detection System.","color":"#FFE0A3","italic":true},{"text":" [Link]","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Gibbsly's download for Entity Id and Hit Detection System.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/gibbsly/ehid"}}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" RockNRed ","color":"#FF004C","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"OC idea, do not steal\"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Inspiration, ideas, and implementation assistance across Cartographer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" McTsTs ","color":"#04D621","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inventory Manipulation Library by McTsts","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" CooleyBrekka ","color":"#A94DF5","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"CooleyBrekka's Mob Motion Library","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Nava ","color":"#8DE607","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Clown Bastard\"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Original inspiration for Custom Enchantments and Cartographer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Gizmo90704 ","color":"#3DFFC5","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Gizmo Room™ not included\"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Custom Enchantments and Mob Abilities. Beta testing.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" GavstarB ","color":"#3DFF1F","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration, ideas, and implementation assistance for Custom Enchantments.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Compsogbrickus ","color":"#ACFF1C","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Beta testing and bug fixing assistance.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" BeastMasterFTW ","color":"#FF5E74","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Mob Abilities.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Novalescent ","color":"#FF8800","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Mob Abilities.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Vazkii ","color":"#E32EFF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration via the Lexica Botania for Cartographer's manual item.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" 14er ","color":"#7CFFFF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Utilties provided via Black Box Library","color":"#FFE0A3","italic":true}]


tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

