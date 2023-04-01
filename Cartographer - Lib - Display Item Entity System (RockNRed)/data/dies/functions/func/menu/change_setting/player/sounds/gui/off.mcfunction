
scoreboard players set @s dies.option.player.sounds.gui 0

function dies:func/menu/generic_click

execute if score @s dies.option.player.action_feedback matches 1 run title @s actionbar ["",{"text":"Sounds ","color":"#F5CE54"},{"text":"for GUI ","color":"#4EF4A9"},{"text":"have been toggled ","color":"#EFDADA"},{"text":"off","color":"#4EF4A9"},{"text":".","color":"#EFDADA"}]
