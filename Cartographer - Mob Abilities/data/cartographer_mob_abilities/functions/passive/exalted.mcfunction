summon armor_stand ~ ~ ~ {Glowing:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["exalted_weapon"],Pose:{RightArm:[0f,0f,315f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stone_button",Count:1b},{}],HandDropChances:[0.085F,0.085F],CustomName:'{"text":"Oathbound Weapon"}'}

data modify entity @e[type=armor_stand,tag=exalted_weapon,limit=1,sort=nearest,distance=..2] HandItems[0] set from entity @e[type=item,distance=..2,limit=1,sort=nearest,nbt={Item:{tag:{ExaltedDrop:1}}}] Item

function cartographer_mob_abilities:passive/exalted/place/x_align

playsound minecraft:block.bell.use hostile @a[distance=..16] ~ ~ ~ 10 0.5

particle minecraft:firework ~ ~1 ~ 0.5 0.3 0.5 0.2 40 normal

kill @s

#say test