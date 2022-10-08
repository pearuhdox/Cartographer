scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $void_ruleset ca.gamerule 1

execute if score $void_ruleset ca.gamerule matches 3.. run scoreboard players set $void_ruleset ca.gamerule 0

scoreboard players set $lift charon.gmr 0
scoreboard players set $return charon.gmr 0


execute if score $void_ruleset ca.gamerule matches 1 run scoreboard players set $lift charon.gmr 1
execute if score $void_ruleset ca.gamerule matches 2 run scoreboard players set $return charon.gmr 1

execute if score $void_ruleset ca.gamerule matches 0 run title @s actionbar [{"text":"Void Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"EXECUTE","color":"yellow","italic":false}]
execute if score $void_ruleset ca.gamerule matches 1 run title @s actionbar [{"text":"Void Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"LIFT","color":"yellow","italic":false}]
execute if score $void_ruleset ca.gamerule matches 2 run title @s actionbar [{"text":"Void Ruleset ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"RETURN","color":"yellow","italic":false}]