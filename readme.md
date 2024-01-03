# Quick Image transcriber
# Requirements
- Linux
- KDE Spectacle (screenshot software)
- Tesseract (image to text transcriber)
  - Tesseract Language packages other than English (optional)
- xclip (on X11)
  - On Wayland, wl-paste should be used instead, but for now it hasn't been tested.

# Usage
## Sourcing
The defined shell function must be either copied into `.bashrc`, `.zshrc`, etc, or better yet, sourced from there:
```sh
source image_transcriber.sh
```

## Running

For transcribing a text in LANGUAGE, type:

```sh
transcribe $LANGUAGE
```

Where LANGUAGE may be:
- eng: English
- por: Portuguese
- etc

Languages are defined by Tesseract packages. English is installed bydefault.
In Fedora, portuguese may be installed with `dnf` from `tesseract-langpack-por.noarch`

After running the command, a the screen should fade and a cross cursor should appear, allowing for a rectangular region to be copied via click and drag.
After adjusting the region and pressing enter, the content of the image should appear on the clipboard.
