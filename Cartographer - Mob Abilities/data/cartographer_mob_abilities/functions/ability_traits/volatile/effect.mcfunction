execute unless entity @s[tag=ability_dmg+] unless entity @s[tag=ability_dmg++] unless entity @s[tag=ability_dmg-] unless entity @s[tag=ability_dmg--] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}

execute if entity @s[tag=ability_dmg+] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}
execute if entity @s[tag=ability_dmg++] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}

execute if entity @s[tag=ability_dmg-] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}
execute if entity @s[tag=ability_dmg--] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}