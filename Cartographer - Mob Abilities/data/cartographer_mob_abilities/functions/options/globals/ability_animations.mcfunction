scoreboard players set $gmr_freeze ca.mutex 1
gamerule sendCommandFeedback false

execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $gl_ab_ani ca.gamerule 1

execute if score $gl_ab_ani ca.gamerule matches 3 run scoreboard players set $gl_ab_ani ca.gamerule 0

execute if score $gl_ab_ani ca.gamerule matches 0 run title @s actionbar [{"text":"Ability Animations ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"BOTH GLOWING AND CHARGE BARS","color":"yellow","italic":false}]
execute if score $gl_ab_ani ca.gamerule matches 1 run title @s actionbar [{"text":"Ability Animations ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ONLY GLOWING","color":"yellow","italic":false}]
execute if score $gl_ab_ani ca.gamerule matches 2 run title @s actionbar [{"text":"Ability Animations ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ONLY CHARGE BARS","color":"yellow","italic":false}]

function cartographer_mob_abilities:options/main