playsound minecraft:entity.ghast.hurt master @a[distance=..16] ~ ~ ~ 0.4 0.5
execute if score $global helper_diff matches 1 run scoreboard players set @s ca.horrified 120
execute if score $global helper_diff matches 2 run scoreboard players set @s ca.horrified 200
execute if score $global helper_diff matches 3.. run scoreboard players set @s ca.horrified 280