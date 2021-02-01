########################################
# File: Cartographer Core - Load / Setup
#
# Author: PearUhDox | Date: 1/11/2021
#
# Description: The dialogue box for displaying credits.
########################################

gamerule sendCommandFeedback false
schedule function cartographer_core:load/fix_gamerules 2t
schedule function cartographer_core:load/gamerule_states 3t

execute as @p run function cartographer_core:load/spacer

execute as @p at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.75
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------------","color":"#FFE0A3","bold":true}]
tellraw @p {"text":"A list of those who brought you what you're using.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @p [{"text":"❰","color":"gold"},{"text":" PearUhDox ","color":"#B33EE6","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Creator, Director, and Implementer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" RockNRed ","color":"#FF004C","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration, ideas, and implementation assistance across Cartographer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Suso ","color":"#55FF17","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Optimization Assistance and Bugfixing. Player Data Array Modification System for Multiplayer Support.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Nava ","color":"#E65C00","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Original inspiration for Custom Enchantments and Cartographer.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Asometric ","color":"#817DFF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Optimization Assistance and Bugfixing.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" GalacticAC ","color":"#BCFF70","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Custom Player Damage Method Implementation.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Gizmo90704 ","color":"#08A4FF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Custom Enchantments and Mob Abilities. Beta testing and stress testing assistance.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" GavstarB ","color":"#3DFF1F","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration, ideas, and implementation assistance for Custom Enchantments.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Matt_97 ","color":"#ACFF1C","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Beta testing and bug fixing assistance.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" ShadowVisions ","color":"#9B7DFF","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Custom Enchantments.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" BeastMasterFTW ","color":"#FF5E74","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Mob Abilities.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" FirelordWeaponry ","color":"#FF8800","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Mob Abilities.","color":"#FFE0A3","italic":true}]
tellraw @p [{"text":"❰","color":"gold"},{"text":" Combustible ","color":"#6EFFD3","bold":false,"italic":false},{"text":"❱ ","color":"gold"},{"text":"Inspiration and ideas for Mob Abilities.","color":"#FFE0A3","italic":true}]

tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[Return]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

schedule function cartographer_core:load/command_feedback 1t