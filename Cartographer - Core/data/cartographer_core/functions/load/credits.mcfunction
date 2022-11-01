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
tellraw @p [{"text":"❰","color":"gold","bold":true},{"text":"⊰ Cartographer ⊱","color":"#FFE0A3","bold":true},{"text":"❱","color":"gold","bold":true},{"text":"---------------------","color":"#FFE0A3","bold":true}]
tellraw @p {"text":"A list of those who brought you what you're using.","color":"#FFE0A3","bold":false,"italic":true}
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

tellraw @s [{"text":"      ❰ ","color":"gold"},{"text":"Creator / Primary Developer","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"                    PearUhDox","color":"#DB2FED","bold":false,"italic":false}]

tellraw @s [{"text":"      ❰ ","color":"gold"},{"text":"Additional Code Contributions","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"          Asometric","color":"#FFCD03","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Brought to you by Harassment\"","color":"#FFE0A3","italic":true}]}},{"text":" Suso ","color":"#61C0FF","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Technical Debt Collector","color":"#FFE0A3","italic":true}]}},{"text":"RockNRed","color":"#FF004C","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"OC idea, do not steal\"","color":"#FFE0A3","italic":true}]}}]

tellraw @s [{"text":"   ❰ ","color":"gold"},{"text":"Library Support and Development","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"            RockNRed","color":"#FF004C","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"OC idea, do not steal\"","color":"#FFE0A3","italic":true}]}},{"text":" Suso ","color":"#61C0FF","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Technical Debt Collector","color":"#FFE0A3","italic":true}]}},{"text":"Gibbsly","color":"#BF0000","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Your feet, hand them over.\"","color":"#FFE0A3","italic":true}]}}]
tellraw @s [{"text":"             McTsTs ","color":"#04D621","bold":false,"italic":false},{"text":"CooleyBrekka","color":"#A94DF5","bold":false,"italic":false}]

#{"text":" [Link]","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Gibbsly's download for Entity Id and Hit Detection System.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"open_url","value":"https://github.com/gibbsly/ehid"}}

tellraw @s [{"text":"❰ ","color":"gold"},{"text":"Optimization and Technical Assistance","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"           Suso","color":"#61C0FF","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Technical Debt Collector","color":"#FFE0A3","italic":true}]}},{"text":" Asometric ","color":"#FFCD03","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Brought to you by Harassment\"","color":"#FFE0A3","italic":true}]}},{"text":"Gibbsly","color":"#BF0000","bold":false,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"\"Your feet, hand them over.\"","color":"#FFE0A3","italic":true}]}}]

tellraw @s [{"text":"      ❰ ","color":"gold"},{"text":"Beta Testing and Bug Fixing","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"        Gizmo","color":"#3DFFC5","bold":false,"italic":false},{"text":" Compsogbrickus","color":"#ACFF1C","bold":false,"italic":false},{"text":" Rhino","color":"#0FFF7F","bold":false,"italic":false}]
tellraw @s [{"text":"             BeastMasterFTW","color":"#FF5E74","bold":false,"italic":false},{"text":" Tris ","color":"#FF0AF7","bold":false,"italic":false}]


tellraw @s [{"text":"     ❰ ","color":"gold"},{"text":"Additional Credits or Shoutouts","color":"#CFFFFD","bold":false,"italic":false,"underlined":false},{"text":" ❱ ","color":"gold"}]
tellraw @s [{"text":"  Nava, GavstarB, Novalescent, Vazkii, 14er","color":"white","bold":false,"italic":false,"underlined":false}]

tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}
tellraw @p [{"text":"[⏎]","color":"#33FFF8","bold":true,"italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"Return to the reload panel.","color":"#FFE0A3","italic":true}]},"clickEvent":{"action":"run_command","value":"/function cartographer_core:load/reload_panel"}}]
tellraw @p {"text":"------------------------------------------","color":"#FFE0A3","bold":true}

