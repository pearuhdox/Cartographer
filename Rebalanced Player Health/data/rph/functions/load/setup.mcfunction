scoreboard objectives add rph.health dummy
scoreboard objectives add rph.health_max dummy
scoreboard objectives add rph.health_math health

scoreboard objectives add rph.temp.health_flat dummy
scoreboard objectives add rph.temp.health_percent dummy

scoreboard objectives add rph.temp.armor_flat dummy
scoreboard objectives add rph.temp.armor_percent dummy

scoreboard objectives add rph.armor dummy

scoreboard objectives add rph.melee_protection dummy
scoreboard objectives add rph.projectile_protection dummy
scoreboard objectives add rph.blast_protection dummy
scoreboard objectives add rph.fire_protection dummy
scoreboard objectives add rph.magic_protection dummy
scoreboard objectives add rph.feather_falling dummy

scoreboard objectives add rph.absorption dummy

scoreboard objectives add rph.mana dummy

scoreboard objectives add rph.air air

scoreboard objectives add rph.respawn minecraft.custom:minecraft.time_since_death

scoreboard objectives add rph.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add rph.take_dmg minecraft.custom:minecraft.damage_taken

scoreboard objectives add rph.freeze dummy

scoreboard objectives add rph.var dummy

scoreboard objectives add rph.one_shot_cooldown dummy

scoreboard objectives add rph.heart_flash_ani dummy
scoreboard objectives add rph.heart_flash_amt dummy

scoreboard objectives add rph.mana_flash_ani dummy

scoreboard objectives add rph.regen_time dummy

scoreboard objectives add rph.hunger food

scoreboard objectives add rph.durability dummy

scoreboard objectives add rph.cooldown dummy

scoreboard players set $center rph.health 8000
scoreboard players set $-1 rph.health -1


scoreboard players set $-1 rph.var -1
scoreboard players set $1000 rph.var 1000
scoreboard players set $100 rph.var 100
scoreboard players set $10 rph.var 10
scoreboard players set $15 rph.var 15
scoreboard players set $5 rph.var 5
scoreboard players set $2 rph.var 2
scoreboard players set $20 rph.var 20
scoreboard players set $30 rph.var 30

scoreboard objectives add rph.act_bar dummy

setblock 4206907 5 4206907 air replace
setblock 4206907 5 4206907 purple_shulker_box replace

data modify storage rph:text Templates set value {}


data modify storage rph:text Templates.ShiftBack set value ['"\\uF82B\\uF829\\uF822"']
data modify storage rph:text Templates.ShiftBackSmall set value ['"\\uF822"']

data modify storage rph:text Templates.ReturnOne set value ['"\\uF805\\uF803"']
data modify storage rph:text Templates.ReturnRow set value ['"\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803\\uF805\\uF803"']
data modify storage rph:text Templates.MoveOne set value ['"\\uF828"']
data modify storage rph:text Templates.MoveRow set value ['"\\uF828\\uF828\\uF828\\uF828\\uF828\\uF828\\uF828\\uF828\\uF828\\uF828"']


data modify storage rph:text Templates.EmptySingle set value ['"\\uE0A0\\uF802"']
data modify storage rph:text Templates.EmptyRow set value ['"\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802\\uE0A0\\uF802"']


data modify storage rph:text Templates.RedWhole set value ['"\\uE0A1\\uF802"']
data modify storage rph:text Templates.RedHalf set value ['"\\uE0A2\\uF802"']

data modify storage rph:text Templates.RedPinkWhole set value ['"\\uE0A3\\uF802"']
data modify storage rph:text Templates.RedPinkHalf set value ['"\\uE0A4\\uF802"']

data modify storage rph:text Templates.PinkWhole set value ['"\\uE0A5\\uF802"']
data modify storage rph:text Templates.PinkHalf set value ['"\\uE0A6\\uF802"']

data modify storage rph:text Templates.WhitePinkWhole set value ['"\\uE0A7\\uF802"']
data modify storage rph:text Templates.WhitePinkHalf set value ['"\\uE0A8\\uF802"']

data modify storage rph:text Templates.WhiteWhole set value ['"\\uE0A9\\uF802"']
data modify storage rph:text Templates.WhiteHalf set value ['"\\uE0AA\\uF802"']


data modify storage rph:text Templates.FlashEmptySingle set value ['"\\uE0B0\\uF802"']
data modify storage rph:text Templates.FlashEmptyRow set value ['"\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802\\uE0B0\\uF802"']


data modify storage rph:text Templates.FlashRedWhole set value ['"\\uE0B1\\uF802"']
data modify storage rph:text Templates.FlashRedHalf set value ['"\\uE0B2\\uF802"']
data modify storage rph:text Templates.FlashRedHalfRight set value ['"\\uE0BB\\uF802"']

data modify storage rph:text Templates.FlashRedPinkWhole set value ['"\\uE0B3\\uF802"']
data modify storage rph:text Templates.FlashRedPinkHalf set value ['"\\uE0B4\\uF802"']
data modify storage rph:text Templates.FlashRedPinkHalfRight set value ['"\\uE0BC\\uF802"']

data modify storage rph:text Templates.FlashPinkWhole set value ['"\\uE0B5\\uF802"']
data modify storage rph:text Templates.FlashPinkHalf set value ['"\\uE0B6\\uF802"']
data modify storage rph:text Templates.FlashPinkHalfRight set value ['"\\uE0BD\\uF802"']

data modify storage rph:text Templates.FlashWhitePinkWhole set value ['"\\uE0B7\\uF802"']
data modify storage rph:text Templates.FlashWhitePinkHalf set value ['"\\uE0B8\\uF802"']
data modify storage rph:text Templates.FlashWhitePinkHalfRight set value ['"\\uE0BE\\uF802"']

data modify storage rph:text Templates.FlashWhiteWhole set value ['"\\uE0B9\\uF802"']
data modify storage rph:text Templates.FlashWhiteHalf set value ['"\\uE0BA\\uF802"']
data modify storage rph:text Templates.FlashWhiteHalfRight set value ['"\\uE0BF\\uF802"']


data modify storage rph:text Templates.AbsWhole set value ['"\\uE0CA\\uF802"']
data modify storage rph:text Templates.AbsHalf set value ['"\\uE0CB\\uF802"']

data modify storage rph:text Templates.ArmorWhole set value ['"\\uE0DA\\uF802"']
data modify storage rph:text Templates.ArmorHalf set value ['"\\uE0DB\\uF802"']

data modify storage rph:text Templates.ManaEmpty set value ['"\\uE0E0\\uF802"']
data modify storage rph:text Templates.ManaHalf set value ['"\\uE0E1\\uF802"']
data modify storage rph:text Templates.ManaWhole set value ['"\\uE0E2\\uF802"']

data modify storage rph:text Templates.ManaEmptyFlash set value ['"\\uE0E3\\uF802"']
data modify storage rph:text Templates.ManaHalfFlash set value ['"\\uE0E4\\uF802"']
data modify storage rph:text Templates.ManaWholeFlash set value ['"\\uE0E5\\uF802"']

data modify storage rph:text Templates.Air set value ['"\\uE0EA\\uF802"']
data modify storage rph:text Templates.AirPop set value ['"\\uE0EB\\uF802"']
data modify storage rph:text Templates.AirSpace set value ['"\\uE0EC\\uF802"']

data modify storage rph:text Templates.HeartNum0 set value ['"\\uE010\\uF804"']
data modify storage rph:text Templates.HeartNum1 set value ['"\\uE011\\uF804"']
data modify storage rph:text Templates.HeartNum2 set value ['"\\uE012\\uF804"']
data modify storage rph:text Templates.HeartNum3 set value ['"\\uE013\\uF804"']
data modify storage rph:text Templates.HeartNum4 set value ['"\\uE014\\uF804"']
data modify storage rph:text Templates.HeartNum5 set value ['"\\uE015\\uF804"']
data modify storage rph:text Templates.HeartNum6 set value ['"\\uE016\\uF804"']
data modify storage rph:text Templates.HeartNum7 set value ['"\\uE017\\uF804"']
data modify storage rph:text Templates.HeartNum8 set value ['"\\uE018\\uF804"']
data modify storage rph:text Templates.HeartNum9 set value ['"\\uE019\\uF804"']

data modify storage rph:text Templates.AbsNum0 set value ['"\\uE020\\uF804"']
data modify storage rph:text Templates.AbsNum1 set value ['"\\uE021\\uF804"']
data modify storage rph:text Templates.AbsNum2 set value ['"\\uE022\\uF804"']
data modify storage rph:text Templates.AbsNum3 set value ['"\\uE023\\uF804"']
data modify storage rph:text Templates.AbsNum4 set value ['"\\uE024\\uF804"']
data modify storage rph:text Templates.AbsNum5 set value ['"\\uE025\\uF804"']
data modify storage rph:text Templates.AbsNum6 set value ['"\\uE026\\uF804"']
data modify storage rph:text Templates.AbsNum7 set value ['"\\uE027\\uF804"']
data modify storage rph:text Templates.AbsNum8 set value ['"\\uE028\\uF804"']
data modify storage rph:text Templates.AbsNum9 set value ['"\\uE029\\uF804"']

data modify storage rph:text Templates.ArmorNum0 set value ['"\\uE030\\uF804"']
data modify storage rph:text Templates.ArmorNum1 set value ['"\\uE031\\uF804"']
data modify storage rph:text Templates.ArmorNum2 set value ['"\\uE032\\uF804"']
data modify storage rph:text Templates.ArmorNum3 set value ['"\\uE033\\uF804"']
data modify storage rph:text Templates.ArmorNum4 set value ['"\\uE034\\uF804"']
data modify storage rph:text Templates.ArmorNum5 set value ['"\\uE035\\uF804"']
data modify storage rph:text Templates.ArmorNum6 set value ['"\\uE036\\uF804"']
data modify storage rph:text Templates.ArmorNum7 set value ['"\\uE037\\uF804"']
data modify storage rph:text Templates.ArmorNum8 set value ['"\\uE038\\uF804"']
data modify storage rph:text Templates.ArmorNum9 set value ['"\\uE039\\uF804"']

data modify storage rph:text Templates.1PixelSpacer set value ['"\\uF832"']
data modify storage rph:text Templates.2PixelSpacer set value ['"\\uF833"']
data modify storage rph:text Templates.2PixelSpacer set value ['"\\uF834"']
data modify storage rph:text Templates.6PixelSpacer set value ['"\\uF836"']
data modify storage rph:text Templates.7PixelSpacer set value ['"\\uF838"']
data modify storage rph:text Templates.12PixelSpacer set value ['"\\uF832\\uF833\\uF833\\uF838"']
data modify storage rph:text Templates.15PixelSpacer set value ['"\\uF839"']

data modify storage rph:text Templates.13NegSpacer set value ['"\\uF808\\uF807"']

data modify storage rph:text Templates.EmptyWarning set value ['"\\uF832\\uEA00\\uF801\\uF832"']
data modify storage rph:text Templates.WitherWarning set value ['"\\uF832\\uEA01\\uF801\\uF832"']
data modify storage rph:text Templates.PoisonWarning set value ['"\\uF832\\uEA02\\uF801\\uF833"']

data modify storage rph:text Templates.PoisonHeart set value ['"\\uF805\\uF803\\uEA03\\uF802"']
data modify storage rph:text Templates.PoisonHeartHalf set value ['"\\uF805\\uF803\\uEA04\\uF802"']

data modify storage rph:text Templates.WitherHeart set value ['"\\uF805\\uF803\\uEA05\\uF802"']
data modify storage rph:text Templates.WitherHeartHalf set value ['"\\uF805\\uF803\\uEA06\\uF802"']