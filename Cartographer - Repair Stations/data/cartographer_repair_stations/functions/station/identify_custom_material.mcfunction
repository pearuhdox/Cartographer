scoreboard players set $wooden ca.repair_station_state 0
scoreboard players set $stone ca.repair_station_state 0
scoreboard players set $golden ca.repair_station_state 0
scoreboard players set $iron ca.repair_station_state 0
scoreboard players set $diamond ca.repair_station_state 0
scoreboard players set $netherite ca.repair_station_state 0
scoreboard players set $leather ca.repair_station_state 0
scoreboard players set $chain ca.repair_station_state 0
scoreboard players set $scute ca.repair_station_state 0
scoreboard players set $membrane ca.repair_station_state 0
scoreboard players set $string ca.repair_station_state 0
scoreboard players set $quartz ca.repair_station_state 0
scoreboard players set $redstone ca.repair_station_state 0
scoreboard players set $amethyst ca.repair_station_state 0
scoreboard players set $copper ca.repair_station_state 0
scoreboard players set $emerald ca.repair_station_state 0
scoreboard players set $carrot ca.repair_station_state 0
scoreboard players set $warped ca.repair_station_state 0
scoreboard players set $prismarine ca.repair_station_state 0

scoreboard players set $ink ca.repair_station_state 0
scoreboard players set $ender ca.repair_station_state 0
scoreboard players set $gunpowder ca.repair_station_state 0
scoreboard players set $glowstone ca.repair_station_state 0
scoreboard players set $blaze_powder ca.repair_station_state 0

scoreboard players set $slime ca.repair_station_state 0
scoreboard players set $magma ca.repair_station_state 0
scoreboard players set $star ca.repair_station_state 0
scoreboard players set $echo ca.repair_station_state 0
scoreboard players set $shulker ca.repair_station_state 0

execute store result score $custom_mat_amt ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.tag.CustomRepair.amount

execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"wooden"}}}}] run scoreboard players set $wooden ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"stone"}}}}] run scoreboard players set $stone ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"golden"}}}}] run scoreboard players set $golden ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"iron"}}}}] run scoreboard players set $iron ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"diamond"}}}}] run scoreboard players set $diamond ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"netherite"}}}}] run scoreboard players set $netherite ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"leather"}}}}] run scoreboard players set $leather ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"chain"}}}}] run scoreboard players set $chain ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"scute"}}}}] run scoreboard players set $scute ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"membrane"}}}}] run scoreboard players set $membrane ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"string"}}}}] run scoreboard players set $string ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"quartz"}}}}] run scoreboard players set $quartz ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"redstone"}}}}] run scoreboard players set $redstone ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"amethyst"}}}}] run scoreboard players set $amethyst ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"copper"}}}}] run scoreboard players set $copper ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"emerald"}}}}] run scoreboard players set $emerald ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"warped"}}}}] run scoreboard players set $warped ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"carrot"}}}}] run scoreboard players set $carrot ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"prismarine"}}}}] run scoreboard players set $prismarine ca.repair_station_state 1

execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"ink"}}}}] run scoreboard players set $ink ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"ender"}}}}] run scoreboard players set $ender ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"gunpowder"}}}}] run scoreboard players set $gunpowder ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"glowstone"}}}}] run scoreboard players set $glowstone ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"blaze_powder"}}}}] run scoreboard players set $blaze_powder ca.repair_station_state 1

execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"slime"}}}}] run scoreboard players set $slime ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"magma"}}}}] run scoreboard players set $magma ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"star"}}}}] run scoreboard players set $star ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"echo"}}}}] run scoreboard players set $echo ca.repair_station_state 1
execute if entity @s[nbt={item:{tag:{CustomRepair:{material:"shulker"}}}}] run scoreboard players set $shulker ca.repair_station_state 1


scoreboard players operation $wooden ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $stone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $golden ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $iron ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $diamond ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $netherite ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $leather ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $chain ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $scute ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $membrane ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $string ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $quartz ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $redstone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $amethyst ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $copper ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $emerald ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $carrot ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $warped ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $prismarine ca.repair_station_state *= $custom_mat_amt ca.repair_station_state

scoreboard players operation $ink ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $ender ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $gunpowder ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $glowstone ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $blaze_powder ca.repair_station_state *= $custom_mat_amt ca.repair_station_state

scoreboard players operation $slime ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $magma ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $star ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $echo ca.repair_station_state *= $custom_mat_amt ca.repair_station_state
scoreboard players operation $shulker ca.repair_station_state *= $custom_mat_amt ca.repair_station_state