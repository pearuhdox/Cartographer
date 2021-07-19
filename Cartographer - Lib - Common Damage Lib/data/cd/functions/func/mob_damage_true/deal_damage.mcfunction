#Return the health equal to removing the health of the mob minus the damage. Take from Absorption first.
execute store result score $md.Health cdl.Temp run data get entity @s Health 100
execute store result score $md.Abs cdl.Temp run data get entity @s AbsorptionAmount 100

#Get the amount of damage we reduce from Absorption
scoreboard players operation $md.Abs cdl.Temp -= @s cdl.Damage_Queue
execute if score $md.Abs cdl.Temp matches 0.. run function cd:func/mob_damage_true/damage/absorbed
execute if score $md.Abs cdl.Temp matches ..-1 run function cd:func/mob_damage_true/damage/not_absorbed