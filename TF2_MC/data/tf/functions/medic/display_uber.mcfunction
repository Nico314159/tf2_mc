scoreboard players operation #display_percentage value = @s uberMeter
scoreboard players operation #display_percentage value /= #8 value
title @s times 0 5000 0
title @s title ""
title @s subtitle [{"score":{"name":"#display_percentage","objective":"value"}},{"text":"% Übercharge"}]