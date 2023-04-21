scoreboard players operation @s bbl.damage_queue = $proj_dmg catt.var

execute unless score @s catt.proj_prot matches 0.. run function catt:shoot/hit/calc_proj_prot
execute if score @s catt.proj_prot matches 1.. run function catt:shoot/hit/do_proj_prot

function cd:lib/mob/damage/true

scoreboard players set @s bbl.damage_queue 0