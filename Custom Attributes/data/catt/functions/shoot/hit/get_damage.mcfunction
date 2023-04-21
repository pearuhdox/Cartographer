scoreboard players operation $proj_dmg catt.var = @s catt.proj_dmg
scoreboard players operation $proj_dmg catt.var /= $10 catt.var

scoreboard players operation $proj_dmg_mod catt.var = $proj_dmg catt.var
scoreboard players operation $proj_dmg_mod catt.var %= $10 catt.var

scoreboard players operation $proj_dmg catt.var /= $10 catt.var

execute if score $proj_dmg_mod catt.var matches 6.. run scoreboard players add $proj_dmg catt.var 1

execute if entity @s[tag=catt.is_trident] run scoreboard players set $was_trident catt.var 1