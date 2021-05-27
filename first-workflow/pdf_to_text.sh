#!/bin/bash

PATH_TO_SAVE_FILE="$1"
PDF_FILENAME="$2"

convert -density 600 "$PATH_TO_SAVE_FILE$PDF_FILENAME" "$PDF_FILENAME.png"
tesseract "$PDF_FILENAME.png" "$PDF_FILENAME"

TXT_FILENAME="extracted_text.txt"
mv "$PDF_FILENAME.txt" "$PATH_TO_SAVE_FILE$TXT_FILENAME"
