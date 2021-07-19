#Get current health and scale * 100
execute store result score $md.Health cdl.Temp run data get entity @s Health 100
scoreboard players operation @s cdl.Damage_Queue *= $constant.100 cdl.Temp

#Add the Absorption of the mob to stored health value
execute store result score $md.Abs cdl.Temp run data get entity @s AbsorptionAmount 100
scoreboard players operation $md.Health cdl.Temp += $md.Abs cdl.Temp

#Check if the damage kills or overkills the mob, and /kill if so
scoreboard players operation $md.Health cdl.Temp -= @s cdl.Damage_Queue
execute if score $md.Health cdl.Temp matches ..0 run kill @s

#If the were to survive the damage, deal damage acordingly.
execute if score $md.Health cdl.Temp matches 1.. run function cd:func/mob_damage_true/deal_damage