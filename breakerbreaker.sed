#!/usr/bin/env sed -f

# unwrap paragraphs
:a;
N;
$!{/\n$/!ba};
s/\s*\n\s*/ /g

# breakerbreaker
s/\([.,;:?!")]\)\s\+/\1\n/g;
s/\s\+\(["(]\)/\n\1/g;
s/\s\+--\s\+/\n--\n/g;
# s/\s\+\(about\|also\|and\|as\|because\|between\|both\|but\|by\|could\|ever\|for\|from\|have\|how\|if\|in\|inside\|into\|is\|may\|might\|minus\|must\|never\|of\|on\|only\|or\|outside\|plus\|should\|that\|their\|to\|was\|what\|when\|where\|whether\|which\|who\|why\|will\|with\|without\|would\)\s\+/\n\1 /g;
