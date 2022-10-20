scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $spawner_defenses charon.gmr 1

execute if score $spawner_defenses charon.gmr matches 3.. run scoreboard players set $spawner_defenses charon.gmr 0

execute if score $spawner_defenses charon.gmr matches 0 run title @s actionbar [{"text":"Spawner Defenses ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $spawner_defenses charon.gmr matches 1 run title @s actionbar [{"text":"Spawner Defenses ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"SET DELAY ZERO","color":"aqua","italic":false}]
execute if score $spawner_defenses charon.gmr matches 2 run title @s actionbar [{"text":"Spawner Defenses ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"CUT HALF TIME REMAINING","color":"aqua","italic":false}]
