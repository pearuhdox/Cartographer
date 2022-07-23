#writing into storage {Ambient: 0b, ShowIcon: 0b, ShowParticles: 0b, Duration: 20, Id: 11b, Amplifier: 0b}
data modify storage ca_core:resistance_true effect set from entity @s ActiveEffects[{Id:11}] 

execute store result score @s ca.res.amp run data get storage ca_core:resistance_true effect.Amplifier
execute store result score @s ca.res.dur run data get storage ca_core:resistance_true effect.Duration

execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 if data storage ca_core:resistance_true effect.HiddenEffect run data modify storage ca_core:resistance_true effect set from storage ca_core:resistance_true effect.HiddenEffect

#reading values
execute store result score @s ca.res.amp run data get storage ca_core:resistance_true effect.Amplifier
execute store result score @s ca.res.par run data get storage ca_core:resistance_true effect.ShowParticles
execute store result score @s ca.res.dur run data get storage ca_core:resistance_true effect.Duration
execute store result score @s ca.res.amb run data get storage ca_core:resistance_true effect.Ambient
execute store result score @s ca.res.icn run data get storage ca_core:resistance_true effect.ShowIcon

execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set $check_too_low ca.res.dur 1

execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set @s ca.res.amp 0
execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set @s ca.res.par 0
execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set @s ca.res.dur 0
execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set @s ca.res.amb 0
execute if score @s ca.res.amp matches 4.. if score @s ca.res.dur matches ..21 run scoreboard players set @s ca.res.icn 0

#say saving resistance val