
#Put old string into building storage
data modify storage bbl:concat sudo_root.internal.build.string set from storage bbl:concat sudo_root.internal.concat
#Put next character into building storage
data modify storage bbl:concat sudo_root.internal.build.character set from storage bbl:concat sudo_root.internal.queue[0]

#Remove first digit of queue
data remove storage bbl:concat sudo_root.internal.queue[0]

#Concat line
function bb:lib/concat/build with storage bbl:concat sudo_root.internal.build

#If done, spit out result
execute unless data storage bbl:concat sudo_root.internal.queue[0] run function bb:lib/concat/finish
#If remaing characters, loop
execute if data storage bbl:concat sudo_root.internal.queue[0] run function bb:lib/concat/loop
