#Reset ability charge
scoreboard players set @s ability_charge 0

#Reset potentially changed stats.
data merge entity @s {NoAI:0}

effect clear @s glowing
effect clear @s slowness
effect clear @s weakness

#Place the ability on brief cooldown
scoreboard players set @s cooldown 4

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players set @a[distance=..32] cooldown 4
tag @s remove tokened