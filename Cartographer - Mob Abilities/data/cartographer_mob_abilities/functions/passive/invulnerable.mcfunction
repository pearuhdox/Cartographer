execute run playsound minecraft:entity.player.attack.nodamage player @a[distance=..8] ~ ~ ~ 1 1
execute run playsound minecraft:item.shield.block player @a[distance=..8] ~ ~ ~ 0.5 0.5

kill @e[type=armor_stand,tag=invulnerable_notice]

summon armor_stand ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🛡 Invincible 🛡","color":"#99453A","bold":true,"italic":false}'}