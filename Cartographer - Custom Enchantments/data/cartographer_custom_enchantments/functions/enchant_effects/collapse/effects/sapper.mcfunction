scoreboard players operation @p bbl.heal_queue = @s ca.sapper
execute if score @p bbl.heal_queue matches 6.. run scoreboard players set @p bbl.heal_queue 5

execute as @p at @s run function bb:call/hpm/player/heal

execute if score @s ca.sapper matches 6 run effect give @p regeneration 2 1
execute if score @s ca.sapper matches 7 run effect give @p regeneration 3 1
execute if score @s ca.sapper matches 8 run effect give @p regeneration 4 1
execute if score @s ca.sapper matches 9 run effect give @p regeneration 5 1
execute if score @s ca.sapper matches 10.. run effect give @p regeneration 7 1

particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 1 5 force
playsound minecraft:entity.witch.drink player @a[distance=..10] ~ ~ ~ 1.5 2

#Adrenaline/Frenzy/Energetic/Concealed synergy
execute if score @s ca.adrenaline matches 1.. at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..12] ~ ~ ~ 2 1.2
execute if score @s ca.frenzy matches 1.. at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..12] ~ ~ ~ 2 1.2
execute if score @s ca.energetic matches 1.. at @s run playsound minecraft:entity.illusioner.prepare_blindness player @a[distance=..12] ~ ~ ~ 2 1.2

execute if score @s ca.concealed matches 1.. at @s run playsound minecraft:entity.illusioner.mirror_move player @a[distance=..12] ~ ~ ~ 1.5 1.2


execute if score @s ca.adrenaline matches 1 run scoreboard players set @p ca.adren_time 200
execute if score @s ca.adrenaline matches 2 run scoreboard players set @p ca.adren_time 400
execute if score @s ca.adrenaline matches 3 run scoreboard players set @p ca.adren_time 600
execute if score @s ca.adrenaline matches 4 run scoreboard players set @p ca.adren_time 800
execute if score @s ca.adrenaline matches 5 run scoreboard players set @p ca.adren_time 1000
execute if score @s ca.adrenaline matches 6.. run scoreboard players set @p ca.adren_time 1200


execute if score @s ca.frenzy matches 1 run scoreboard players set @p ca.frenz_time 200
execute if score @s ca.frenzy matches 2 run scoreboard players set @p ca.frenz_time 400
execute if score @s ca.frenzy matches 3 run scoreboard players set @p ca.frenz_time 600
execute if score @s ca.frenzy matches 4 run scoreboard players set @p ca.frenz_time 800
execute if score @s ca.frenzy matches 5 run scoreboard players set @p ca.frenz_time 1000
execute if score @s ca.frenzy matches 6.. run scoreboard players set @p ca.frenz_time 1200


execute if score @s ca.energetic matches 1 run scoreboard players set @p ca.energ_time 200
execute if score @s ca.energetic matches 2 run scoreboard players set @p ca.energ_time 400
execute if score @s ca.energetic matches 3 run scoreboard players set @p ca.energ_time 600
execute if score @s ca.energetic matches 4 run scoreboard players set @p ca.energ_time 800
execute if score @s ca.energetic matches 5 run scoreboard players set @p ca.energ_time 1000
execute if score @s ca.energetic matches 6.. run scoreboard players set @p ca.energ_time 1200


execute if score @s ca.concealed matches 1 run scoreboard players set @p ca.conceal_time 61
execute if score @s ca.concealed matches 2 run scoreboard players set @p ca.conceal_time 81
execute if score @s ca.concealed matches 3 run scoreboard players set @p ca.conceal_time 101
execute if score @s ca.concealed matches 4 run scoreboard players set @p ca.conceal_time 121
execute if score @s ca.concealed matches 5 run scoreboard players set @p ca.conceal_time 141
execute if score @s ca.concealed matches 6.. run scoreboard players set @p ca.conceal_time 161