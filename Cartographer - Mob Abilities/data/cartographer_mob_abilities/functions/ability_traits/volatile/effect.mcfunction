execute unless entity @s[tag=mystic] unless entity @s[tag=arcane] unless entity @s[tag=muted] unless entity @s[tag=dampened] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}

execute if entity @s[tag=mystic] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:3b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}
execute if entity @s[tag=arcane] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:4b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}

execute if entity @s[tag=muted] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}
execute if entity @s[tag=dampened] run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,CustomName:'{"text":"volatile magic"}'}