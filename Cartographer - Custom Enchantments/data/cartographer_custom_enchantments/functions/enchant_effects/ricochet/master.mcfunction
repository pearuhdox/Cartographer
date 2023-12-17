scoreboard players set @s ca.ricochet_cooldown 40

execute if score $ricochet ca.var matches 5.. run scoreboard players add @s ca.ricochet_cooldown 20

function #minecraft:cartographer/events/enchants_mob_hit/ranged/ricochet