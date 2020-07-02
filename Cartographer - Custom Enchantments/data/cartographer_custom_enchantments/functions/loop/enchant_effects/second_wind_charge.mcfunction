#Add Second Wind Charge points to the player. This checks when "Fight for your life" ends and when the effect could trigger again.

#Runs all action bar info for Second Wind.
execute if entity @s[scores={second_wind=1..,second_wind_cool=3}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"12 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=4}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"11 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=5}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"10 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=6}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"9 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=7}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"8 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=8}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"7 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=9}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"6 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=10}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"5 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=11}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"4 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=12}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"3 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=13}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"2 seconds ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]
execute if entity @s[scores={second_wind=1..,second_wind_cool=14}] run title @s actionbar [{"text":"Borrowed Time: ","color":"red"},{"text":"1 second ","color":"yellow"},{"text":"| ","color":"white","bold":true},{"text":"Debt Paid: "},{"score":{"name":"@p","objective":"second_wind_kill"},"color":"yellow"}]


#Penalize the player if they fail to reach the mob count.
execute if entity @s[scores={second_wind=1,second_wind_cool=15}] unless entity @s[scores={second_wind_kill=5..}] run title @s actionbar {"text":"Second Wind exacts a toll...","color":"red","bold":false,"italic":false}

execute if entity @s[scores={second_wind=1,second_wind_cool=15}] if entity @s[scores={second_wind_kill=5..}] run title @s actionbar {"text":"Escaped Death...","color":"aqua","bold":false,"italic":false}

execute if entity @s[scores={second_wind=1,second_wind_cool=15}] unless entity @s[scores={second_wind_kill=5..}] run effect give @s instant_damage 1 1

execute if entity @s[scores={second_wind=1,second_wind_cool=15}] run playsound minecraft:block.end_portal.spawn player @a[distance=..8] ~ ~ ~ 1 2 1

#Add cooldown score to track time.
execute if entity @s[scores={second_wind=1..16}] run scoreboard players add @s second_wind_cool 1