
#Return the health equal to removing the health of the mob minus the damage. Take from Absorption first.
execute store result score $md.health bbl.storage run data get entity @s Health 100
execute store result score $md.abs bbl.storage run data get entity @s AbsorptionAmount 100

#Get the amount of damage we reduce from Absorption
scoreboard players operation $md.abs bbl.storage -= @s bbl.damage_queue
execute if score $md.abs bbl.storage matches 0.. run function bb:lib/hpm/mob_damage_true/damage/absorbed
execute if score $md.abs bbl.storage matches ..-1 run function bb:lib/hpm/mob_damage_true/damage/not_absorbed
