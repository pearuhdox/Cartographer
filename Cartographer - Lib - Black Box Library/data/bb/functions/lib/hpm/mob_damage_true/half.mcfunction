
execute store result score $md.health bbl.storage run data get entity @s Health 100
execute if score $md.health bbl.storage matches ..49 run function bb:lib/hpm/mob_damage_true/totem_proc
execute if score $md.health bbl.storage matches 50.. store result entity @s Health float 0.01 run scoreboard players remove $md.health bbl.storage 50
