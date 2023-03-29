#> tf2:timer/display/singlestage
#
# @context marker
# @within tf2:timer/main


execute if entity @s[scores={tf2.batch_number=1,tf2.timer.sec=10..59}] run bossbar set tf2:timer_1 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]
execute if entity @s[scores={tf2.batch_number=1,tf2.timer.sec=0..9}] run bossbar set tf2:timer_1 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]

execute if entity @s[scores={tf2.batch_number=2,tf2.timer.sec=10..59}] run bossbar set tf2:timer_2 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]
execute if entity @s[scores={tf2.batch_number=2,tf2.timer.sec=0..9}] run bossbar set tf2:timer_2 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]

execute if entity @s[scores={tf2.batch_number=3,tf2.timer.sec=10..59}] run bossbar set tf2:timer_3 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]
execute if entity @s[scores={tf2.batch_number=3,tf2.timer.sec=0..9}] run bossbar set tf2:timer_3 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]

execute if entity @s[scores={tf2.batch_number=4,tf2.timer.sec=10..59}] run bossbar set tf2:timer_4 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]
execute if entity @s[scores={tf2.batch_number=4,tf2.timer.sec=0..9}] run bossbar set tf2:timer_4 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]

execute if entity @s[scores={tf2.batch_number=5,tf2.timer.sec=10..59}] run bossbar set tf2:timer_5 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]
execute if entity @s[scores={tf2.batch_number=5,tf2.timer.sec=0..9}] run bossbar set tf2:timer_5 name [{"text":"Round – "},{"score":{"name":"@s","objective":"tf2.timer.min"}},{"text":":0"},{"score":{"name":"@s","objective":"tf2.timer.sec"}},{"text":" remaining"}]