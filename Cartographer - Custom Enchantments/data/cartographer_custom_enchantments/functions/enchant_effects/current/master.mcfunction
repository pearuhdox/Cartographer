scoreboard players set @s ca.current_time 61

execute on attacker run scoreboard players set @s ca.current_time 61

execute if score $loyalty ca.var matches 1.. on attacker run scoreboard players add @s ca.loyalty_time 20

function #minecraft:cartographer/events/enchants_mob_hit/ranged/current