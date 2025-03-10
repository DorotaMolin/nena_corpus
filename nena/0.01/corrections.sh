# Corrections to Source Data

# Add missing line number 
FILE="Barwar/Measure for Measure.nena"
echo "Adding missing line number in [$FILE]"
sed -i "" "8 s/^/(1) /" "$FILE"

# Add missing <R> foreign language tag
FILE="Urmi_C/The Adventures of a Princess.nena"
echo "Adding missing <R> tag to [$FILE]"
sed -i "" "s/\(ʾe-<R>\*buk̭ḗṱ\*\)/\1<R>/" "$FILE"

# Re-number the lines for a split text
FILE="Urmi_C/The Wife Who Learns How to Work (2).nena"
echo "Renumbering lines in $FILE"
python3 reline.py "$FILE"
