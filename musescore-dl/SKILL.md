---
name: musescore-dl
description: Download sheet music from MuseScore as PDF. Use when user provides a MuseScore URL and wants to download the sheet music, save piano sheets, or get a PDF of a score.
---

# MuseScore Downloader

Download sheet music from MuseScore URLs as PDF files.

## Usage

Run the download script with a MuseScore URL:

```bash
scripts/download.sh "https://musescore.com/user/XXXX/scores/YYYY"
```

The script will:
1. Navigate through all pages of the score
2. Capture each page image
3. Combine into a PDF named `<song_name>_piano.pdf`
4. Save to `~/Documents/musicsheets/`

## Output

PDFs are saved to: `~/Documents/musicsheets/`

## Requirements

- Xvfb running on DISPLAY=:99 (already configured on teahouse)
- Python venv at `~/projects/musescore-dl/.venv`
