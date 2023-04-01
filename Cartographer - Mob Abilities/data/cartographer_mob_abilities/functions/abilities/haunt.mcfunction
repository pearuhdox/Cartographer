scoreboard players set @s cooldown 18

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

particle minecraft:smoke ~ ~ ~ 0.5 0.3 0.5 0.05 40

function cartographer_mob_abilities:abilities/haunt/calc_damage

playsound minecraft:entity.stray.death hostile @a[distance=..24] ~ ~ ~ 1.5 0.75
playsound minecraft:entity.wither.spawn hostile @a[distance=..24] ~ ~ ~ 0.5 1.35

function cartographer_mob_abilities:abilities/haunt/populate_tags

execute positioned ^ ^0.5 ^1 run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Haunting Shade","color":"white","italic":false}',NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ca.haunting_shade"],Pose:{LeftArm:[90f,0f,90f],RightArm:[270f,0f,90f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:netherite_hoe",Count:1b},{id:"minecraft:netherite_hoe",Count:1b}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1908260}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1945567042,-1579399249,-2062972831,205636661],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQ1ZGM1NWRhYmE0ZTJkMzJhMjg0NDQ4YmI5ZTM4MzM1ZDg0M2Y5M2M0YTc3Njg4NWZkMzU2NTNmZGZjNzU4In19fQ=="}]}}}}]}

execute as @e[type=armor_stand,tag=ca.haunting_shade,tag=!setup,limit=1,sort=nearest,distance=..3] at @s run function cartographer_mob_abilities:abilities/haunt/shade_setup

execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate