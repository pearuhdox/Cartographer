execute on attacker run scoreboard players add @s ca.concentrate_stack 1
execute on attacker run scoreboard players set @s ca.concentrate_time 101

execute on attacker if score @s ca.concentrate_stack matches 1..4 run playsound minecraft:entity.villager.work_fletcher player @s ~ ~ ~ 0.5 2
execute on attacker if score @s ca.concentrate_stack matches 5.. run scoreboard players set @s ca.concentrate_stack 4