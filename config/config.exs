import Config


# An individual comparison is in the form of a 4-element tuple:
# {description, result_set, ingredient_set, fixed_cost}
# `description` is a string that describes exactly what the comparison being made is.
# `result_set` is the list of result items that are to be sold for profit.
#   The format of the items is integer item IDs and/or 2-element tuples of integer IDs and corresponding quantities.
#   Example: a result of 1 Amradyl Godsword would be [11802]
#           a result of 20,000 Zulrah Scales would be [{12934, 20_000}]
# `ingredient_set` is the list of ingredient items that are to be bought cheap to create the result item(s).
#   The format is the same as the the `result_set`
# `fixed_cost` is the integer flat GP cost of converting/crafting ingredients into result.

config :osrs_price_comparator, :compare_sets,
  [
    {"Result: Kodai Wand; Ingredients: Kodai Insignia, Master Wand", [21006], [21043, 6914], 0},
    {"Result: Rune Darts; Ingredients: Rune Darts (p)", [811], [817], 0},
    {"Result: Verac's Helm; Ingredients: Verac's Helm (0), 36,000", [4753], [4980], 36_000},
    {"Result: Saradomin Godsword; Ingredients: Godsword blade, Saradomin Hilt", [11806], [11798, 11814], 0},
    {"Result: Zamorak Godsword; Ingredients: Godsword blade, Zamorak Hilt", [11808], [11798, 11816], 0},
    {"Result: Armadyl Godsword; Ingredients: Godsword blade, Armadyl Hilt", [11802], [11798, 11810], 0},
    {"Result: Bandos Godsword; Ingredients: Godsword blade, Bandos Hilt", [11804], [11798, 11812], 0},
    {"Result: Crushed Superior Dragon Bones; Ingredients: Superior Dragon Bones + 50", [21975], [22124], 50},
    {"Result: Dragonfire Ward; Ingredients: Skeletal Visage, Anti-Dragon Shield", [22003], [22006, 1540], 0},
    {"Result: Ancient Wyvern Shield; Ingredients: Wyvern Visage, Elemental Shield", [21634], [21637, 2890], 0},
    {"Result: Dragonfire Shield; Ingredients: Draconic Visage, Anti-Dragon Shield", [11284], [11286, 1540], 0},
    {"Result: Zulrah Scales * 20,000; Ingredients: Toxic Blowpipe(empty)", [{12934, 20000}], [12924], 0},
    {"Result: Zulrah Scales * 20,000; Ingredients: Magic Fang", [{12934, 20000}], [12932], 0},
    {"Result: Heavy Ballista; Ingredients: Monkey Tail, Unstrung Heavy Ballista", [19481], [19610, 19607], 0},
    {"Result: Unstrung Heavy Ballista; Ingredients: Incomplete Heavy Ballista, Ballista Spring", [19607], [19598, 19601], 0},
    {"Result: Eternal Boots; Ingredients: Eternal Crystal, Infinity Boots", [13235], [13227, 6920], 0},
    {"Result: Primordial Boots; Ingredients: Primordial Crystal, Dragon Boots", [13239], [13231, 11840], 0},
    {"Result: Pegasian Boots; Ingredients: Pegasian Crystal, Ranger Boots", [13237], [13229, 2577], 0},
    {"Result: Devout Boots; Ingredients: Holy Sandals, Drakes Tooth", [22954], [12598, 22960], 0},
    {"Result: Guardian Boots; Ingredients: Bandos Boots, Black Tourmaline Core", [21733], [11836, 21730], 0},
    {"Result: Red Spider Eggs * 100; Ingredients: Giant Egg Sac Full", [{223, 100}], [23517], 0},
    {"Result: Dragon Hunter Lance; Ingredients: Zamorakian Hasta, Hydras claw", [22978], [11889, 22966], 0},
    {"Result: Redwood Sapling; Ingredients: Redwood Tree Seed, Astral Rune + 15", [22859], [22871, 9075], 15},
    {"Result: Dragon Kiteshield; Ingredients: Dragon Sq Shield, Dragon Metal Shard, Dragon Metal Slice", [21895], [1187, 22097, 22100], 0},
  ]
