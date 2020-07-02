summon item ~ -1 ~ {NoGravity:1b,Tags:["infinity_holder"],Age:5998,PickupDelay:32767,Item:{id:barrier,Count:1b}}
execute if entity @s[scores={infinity=1}] run data modify entity @e[type=item,limit=1,sort=nearest,tag=infinity_holder] Item merge from entity @s SelectedItem
execute if entity @s[scores={infinity=2}] run data modify entity @e[type=item,limit=1,sort=nearest,tag=infinity_holder] Item merge from entity @s Inventory[{Slot:-106b}]

tag @s add infinity_storing