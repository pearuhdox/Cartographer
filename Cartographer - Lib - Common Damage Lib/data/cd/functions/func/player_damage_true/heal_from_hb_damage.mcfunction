execute store result score @s cdl.Heal_Queue run scoreboard players operation @s cdl.Damage_Queue *= $constant.-1 cdl.Temp
function cd:lib/player/heal 