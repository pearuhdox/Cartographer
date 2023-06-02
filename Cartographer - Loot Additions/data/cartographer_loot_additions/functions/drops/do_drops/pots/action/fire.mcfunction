summon falling_block ~ ~0.1 ~ {Motion:[0.0,0.25,0.0],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}

summon falling_block ~ ~0.1 ~ {Motion:[0.1,0.25,0.0],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[-0.1,0.25,0.0],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[0.0,0.25,0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[0.0,0.25,-0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}

summon falling_block ~ ~0.1 ~ {Motion:[0.1,0.25,0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[-0.1,0.25,0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[0.1,0.25,-0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[-0.1,0.25,-0.1],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}

summon falling_block ~ ~0.1 ~ {Motion:[0.18,0.25,0.0],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[-0.18,0.25,0.0],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[0.0,0.25,0.18],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}
summon falling_block ~ ~0.1 ~ {Motion:[0.0,0.25,-0.18],BlockState:{Name:"minecraft:fire"},Time:1,DropItem:0b,HurtEntities:0b,FallHurtMax:3,FallHurtAmount:3f,Tags:["ca.pot_fire"]}

summon blaze ~ ~ ~ {Health:12f,Motion:[0.0,0.7,0.0],Tags:["ca.pot_blaze"],Attributes:[{Name:generic.max_health,Base:12}]}

tag @s add loot_add_custom
playsound minecraft:block.decorated_pot.shatter player @a ~ ~ ~ 1.2 0.75