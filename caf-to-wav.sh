# https://apple.stackexchange.com/questions/365616/what-are-the-command-line-options-for-afconvert
# afconvert:
# afconvert -f FORMAT -d CODEC SOURCEFILE [-o DESTINATIONFILE]
#
# Eg:
# WAVE
# afconvert -f WAVE -d LEI32 MyAudio.m4a -o MyAudio.wav
# 

# Create an output Dir:
mkdir ./transpiled

for f in ./*.caf; do
  newName=$(echo "$f" | sed "s/.caf/.wav/g")
  echo "Creating $newName"
  # remember to quote it or spaces may misbehave
  afconvert -f WAVE -d LEI32 "$f" -o "./transpiled/$newName"
done
