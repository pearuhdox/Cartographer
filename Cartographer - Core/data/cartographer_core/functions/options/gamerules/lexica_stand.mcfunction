scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false



execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

execute unless score $lexica_stand ca.gamerule matches 0.. run scoreboard players set $lexica_stand ca.gamerule 0

scoreboard players operation $lexica_stand_past ca.gamerule = $lexica_stand ca.gamerule

execute if score $lexica_stand_past ca.gamerule matches 0 run scoreboard players set $lexica_stand ca.gamerule 1
execute if score $lexica_stand_past ca.gamerule matches 1 run scoreboard players set $lexica_stand ca.gamerule 0

scoreboard players set $lexica_stand_past ca.gamerule -100

execute if score $lexica_stand ca.gamerule matches 0 run title @s actionbar [{"text":"Lexica Stand ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"OPEN LEXICA","color":"yellow","italic":false}]
execute if score $lexica_stand ca.gamerule matches 1 run title @s actionbar [{"text":"Lexica Stand ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"GIVE LEXICA","color":"yellow","italic":false}]

