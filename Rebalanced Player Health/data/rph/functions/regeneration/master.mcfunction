execute if score @s rph.health < @s rph.health_max unless score @s rph.mana < $20 rph.var run function rph:regeneration/health
execute unless score @s rph.health < @s rph.health_max if score @s rph.mana < $20 rph.var run function rph:regeneration/mana
execute if score @s rph.health < @s rph.health_max if score @s rph.mana < $20 rph.var run function rph:regeneration/health_mana

scoreboard players set @s rph.regen_time 0