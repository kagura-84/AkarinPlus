#> asset:reinforcement/merge/marine
# @within function asset:reinforcement/merge/_

data modify storage _index.d: _.BaseItem.tag.Reinforcement append value {id:"marine",lvl:1}
data modify storage _index.d: _.BaseItem.tag.display.Lore append value '{"text":"Marine","color":"gray","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'

function reinforcement:core/success/