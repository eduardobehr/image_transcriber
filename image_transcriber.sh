#! /bin/sh
# required:
#	spectacle
#	tesseract

# requires tesseract-langpack-por
function transcribe(){
	if [[ -z "$1" ]]; then echo "Language must be chosen (e.g. 'por', 'eng', etc)"; return -1; fi
	# Capture image
	IMAGE=$(mktemp)
	spectacle --background --nonotify --region --output $IMAGE

	# Transcribe
	TEXT=$(mktemp)
	tesseract -l $1 $IMAGE $TEXT

	# Copy to clipboard
	cat $TEXT.txt | xclip -selection clipboard

	# Clean up
	rm $IMAGE $TEXT
}

