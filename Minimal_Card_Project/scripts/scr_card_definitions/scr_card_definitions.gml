card_strike = create_card(
    "Strike",
    spr_card_simple_new,
    "Deal damage to a single enemy.",
    card_effect_simple_damage,
    [undefined, 10]   // target object(s) and parameters
);

card_heavy_strike = create_card(
    "Heavy Strike",
    spr_card_heavy_new,
    "Deal double damage to a single enemy.",
    card_effect_double_damage,
    [undefined, 20]
);

card_heal = create_card(
    "Heal",
    spr_card_heal_new,
    "Heal the player.",
    card_effect_heal,
    [undefined, 10]
);

//card_area_attack = create_card(
//    "Area Attack",
//    spr_card_area_new,
//    "Attack all of the enemies",
//    card_effect_area,
//    [5]
//    );
//