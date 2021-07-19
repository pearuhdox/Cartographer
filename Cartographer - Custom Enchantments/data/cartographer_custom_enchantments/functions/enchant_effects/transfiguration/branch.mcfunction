execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run particle minecraft:cloud ~ ~1 ~ 0.3 0 0.3 0.1 10 normal

execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run playsound minecraft:entity.chicken.hurt player @a[distance=..8] ~ ~ ~ 2 0.75

execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run summon chicken ~ ~0.5 ~ {Glowing:1b,ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],CustomName:'{"text":"Poultrygheist"}'}
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run summon chicken ~ ~0.5 ~ {Glowing:1b,ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],CustomName:'{"text":"Poultrygheist"}'}
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run summon chicken ~ ~0.5 ~ {Glowing:1b,ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],CustomName:'{"text":"Poultrygheist"}'}
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run summon chicken ~ ~0.5 ~ {Glowing:1b,ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],CustomName:'{"text":"Poultrygheist"}'}
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run summon chicken ~ ~0.5 ~ {Glowing:1b,ActiveEffects:[{Id:14,Duration:20000000,Amplifier:0b,ShowParticles:0b}],DeathLootTable:"cartographer_custom_enchantments:suspicious_chicken",Motion:[0.0,0.4,0.0],CustomName:'{"text":"Poultrygheist"}'}

execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run tp @s ~ -100 ~
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run tp @s ~ -100 ~
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run tp @s ~ -100 ~
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run tp @s ~ -100 ~
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run tp @s ~ -100 ~

execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_cdl 15
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_cdl 15
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_cdl 15
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_cdl 15
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_cdl 15

execute if score $melee ca.transfig matches 1 if score $melee ca.melee_chance matches ..5 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_bias 0
execute if score $melee ca.transfig matches 2 if score $melee ca.melee_chance matches ..10 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_bias 0
execute if score $melee ca.transfig matches 3 if score $melee ca.melee_chance matches ..15 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_bias 0
execute if score $melee ca.transfig matches 4 if score $melee ca.melee_chance matches ..20 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_bias 0
execute if score $melee ca.transfig matches 5.. if score $melee ca.melee_chance matches ..25 run scoreboard players set @p[scores={ca.transfig=1..}] ca.trans_bias 0

execute if score $melee ca.transfig matches 1 unless score $melee ca.melee_chance matches ..5 run scoreboard players add @p[scores={ca.transfig=1..}] ca.trans_bias 5
execute if score $melee ca.transfig matches 2 unless score $melee ca.melee_chance matches ..10 run scoreboard players add @p[scores={ca.transfig=1..}] ca.trans_bias 5
execute if score $melee ca.transfig matches 3 unless score $melee ca.melee_chance matches ..15 run scoreboard players add @p[scores={ca.transfig=1..}] ca.trans_bias 5
execute if score $melee ca.transfig matches 4 unless score $melee ca.melee_chance matches ..20 run scoreboard players add @p[scores={ca.transfig=1..}] ca.trans_bias 5
execute if score $melee ca.transfig matches 5.. unless score $melee ca.melee_chance matches ..25 run scoreboard players add @p[scores={ca.transfig=1..}] ca.trans_bias 5

scoreboard players set @p[scores={ca.transfig=1..,ca.trans_bias=75..}] ca.trans_bias 75