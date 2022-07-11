execute run playsound minecraft:entity.player.attack.nodamage player @a[distance=..12] ~ ~ ~ 1 2
execute run playsound minecraft:item.shield.block player @a[distance=..12] ~ ~ ~ 0.5 2

kill @e[type=armor_stand,tag=invulnerable_notice]

summon armor_stand ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🏹 Resisted 🏹","color":"#7cf4ba","bold":true,"italic":false}'}