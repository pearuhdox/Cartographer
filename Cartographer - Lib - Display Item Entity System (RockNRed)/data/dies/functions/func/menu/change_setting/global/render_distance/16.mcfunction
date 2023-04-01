
function dies:func/menu/generic_click

scoreboard players set $gamerule.default.render_distance dies.master 16

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Render Distance ","color":"#F5CE54"},{"text":"global default ","color":"#4EF4A9"},{"text":"changed to ","color":"#EFDADA"},{"text":"16","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
