# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 8/11/21
# Last Edit : 8/11/21
# Name      : Block Interaction Loop
# Use       : Summons slimes in the player's face to block interaction.

summon slime ~ ~400 ~ {PersistenceRequired:1b,Size:8,Fire:-20000,HasVisualFire:0b,NoGravity:1b,NoAI:1b,Silent:1b,Invulnerable:1b,Team:"no_collide",Health:999f,Tags:["bbl.block_interaction","disallow_pings"],CustomName:'{"text":"Adriana"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:4000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999}]}