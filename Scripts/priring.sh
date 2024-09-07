#!/usr/bin/env sh

# Capture the colored ASCII art into a variable
ASCII_ART=$(ascii-image-converter ~/Pictures/Priring.png --color -H 24)

# Capture Neofetch output into a variable
NEOFETCH_OUTPUT=$(neofetch --off)

# Use `column` to format the outputs side by side
paste <(echo "$ASCII_ART") <(echo "$NEOFETCH_OUTPUT") | column -s $'\t' -t

