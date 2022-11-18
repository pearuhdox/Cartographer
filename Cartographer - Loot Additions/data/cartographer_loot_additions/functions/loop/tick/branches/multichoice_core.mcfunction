execute if entity @s[tag=!trades_shown] if entity @a[distance=..7,gamemode=!creative,gamemode=!spectator] run function cartographer_loot_additions:multichoice/setup_trades

execute at @s unless block ~ ~ ~ lodestone run function cartographer_loot_additions:multichoice/despawn