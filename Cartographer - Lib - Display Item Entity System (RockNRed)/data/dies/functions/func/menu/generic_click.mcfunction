
function bb:lib/hide_feedback

execute if score @s dies.option.player.sounds.gui matches 1 run function dies:func/menu/click_sound
