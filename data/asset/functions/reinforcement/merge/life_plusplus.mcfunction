#> asset:reinforcement/merge/life_plusplus
# @within function asset:reinforcement/merge/_

data modify storage _index.d: _.BaseItem.tag.Reinforcement[{id:"life"}].lvl set value 3
data modify storage _index.d: _.BaseItem.tag.display.Lore append value '{"text":"Life++","color":"gray","bold":false,"italic":true,"underlined":false,"strikethrough":false,"obfuscated":false}'

function reinforcement:core/success/