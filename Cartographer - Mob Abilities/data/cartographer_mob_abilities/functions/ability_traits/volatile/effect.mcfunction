execute unless entity @s[tag=ca.ability_dmg+++] unless entity @s[tag=ca.ability_dmg---] unless entity @s[tag=ca.ability_dmg+] unless entity @s[tag=ca.ability_dmg++] unless entity @s[tag=ca.ability_dmg-] unless entity @s[tag=ca.ability_dmg--] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,CustomName:'{"text":"volatile magic"}'}

execute if entity @s[tag=ca.ability_dmg+] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"strong volatile magic"}'}
execute if entity @s[tag=ca.ability_dmg++] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"very strong volatile magic"}'}
execute if entity @s[tag=ca.ability_dmg+++] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"very strong volatile magic"}'}

execute if entity @s[tag=ca.ability_dmg-] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"weak volatile magic"}'}
execute if entity @s[tag=ca.ability_dmg--] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"weak volatile magic"}'}
execute if entity @s[tag=ca.ability_dmg---] run summon creeper ~ ~ ~ {Tags:["spawn_checked"],NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"weak volatile magic"}'}

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
