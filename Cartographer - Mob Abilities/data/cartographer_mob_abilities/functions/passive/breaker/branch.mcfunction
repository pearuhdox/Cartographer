#Runs the Breaker Passive.

#^1 ^1 ^
#^-1 ^-1 ^-2

scoreboard players set $breaker_ct ca.mob_var 0

execute store result score $breaker_ct ca.mob_var positioned ^ ^ ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^ ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^ ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^-1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^-1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^-1 ^ unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^ ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^ ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^ ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^ ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^ ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^ ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^-1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^-1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^-1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^1 ^-2 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute store result score $breaker_ct ca.mob_var positioned ^ ^-1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^1 ^-1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 
execute store result score $breaker_ct ca.mob_var positioned ^-1 ^-1 ^-1 unless block ~ ~ ~ #cartographer_mob_abilities:unbreakable run setblock ~ ~ ~ air replace 

execute if score $breaker_ct ca.mob_var matches 1.. unless score $breaker_vfx_cdl ca.mob_var matches 1.. run playsound minecraft:entity.wither.break_block hostile @a[distance=..16] ~ ~ ~ 0.5 2
execute if score $breaker_ct ca.mob_var matches 1.. unless score $breaker_vfx_cdl ca.mob_var matches 1.. run playsound minecraft:block.stone.break hostile @a[distance=..16] ~ ~ ~ 0.5 0.75
execute if score $breaker_ct ca.mob_var matches 1.. unless score $breaker_vfx_cdl ca.mob_var matches 1.. run particle minecraft:block minecraft:stone ^ ^-0.5 ^-1 0.3 0.3 0.3 0 20 normal

execute unless score $breaker_vfx_cdl ca.mob_var matches 1.. run scoreboard players set $breaker_vfx_cdl ca.mob_var 4