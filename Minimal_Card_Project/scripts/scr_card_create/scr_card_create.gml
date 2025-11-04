// These are helper functions for creating and playing cards.

function create_card(_name, _sprite, _desc, _effect, _params) {
    return {
        name: _name,
        sprite: _sprite,
        description: _desc,
        effect: _effect,
        params: _params
    };
}

function play_card(_card) {
    // Call the stored effect with parameters
    _card.effect.apply(undefined, _card.params);
}

function shuffle_cards(_array) {
    var len = array_length(_array);
    for (var i = 0; i < len; i++) {
        for (var j = 0; j < array_length(_array); j++) {
            var temppos = irandom(len-1);
            var tempval = _array[temppos];
            _array[temppos] = _array[j];
            _array[j] = tempval;
        }
    }
}