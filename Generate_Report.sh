#!/bin/bash

# Requirements
# --- Pandoc https://pandoc.org/installing.html
# --- LaTeX (eg. TeX Live) in order to get pdflatex or xelatex "sudo apt-get update > sudo apt-get install texlive-full"
# --- Evince PDF viewer. "sudo apt install evince"
# --- Eisvogel Pandoc LaTeX PDF Template https://github.com/noraj/OSCP-Exam-Report-Template-Markdown/tree/master
# --- Modified The Eisvogel Template to support ECPI Lab Reports, hanging indents, bold text, and centering.

# Check if the number of command-line arguments is not equal to 2. If not, display the usage message and exit the script.
if [ "$#" -ne 2 ]; then
    echo "usage: $0 <input.md> <output.pdf>"
    exit
fi

template_path="$HOME/Report_Writing_Pandoc-Latex/Eisvogal_Template/eisvogel.latex"
destination_path="/usr/share/pandoc/data/templates/eisvogel.latex"

# If this machine does not have the template, put it there.
if [ ! -e "$destination_path" ]; then
    sudo cp "$template_path" "$destination_path"
    if [ ! -e "$destination_path" ]; then
        echo "Failed to copy the Eisvogel template to $destination_path"
        exit 1
    fi
fi

# Convert the input Markdown file ($1) to PDF format using Pandoc. Apply the eisvogel template for styling.
# Generate a table of contents with a depth of 6 levels. Number the sections. Set the syntax highlighting style to tango.
# Use the pdflatex engine for PDF conversion.
pandoc "$1" -o "$2" \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--highlight-style tango \
--pdf-engine=pdflatex

# Check if the exit status of the previous command (pandoc) is equal to 0. 
# If so, open the generated PDF file ($2) using the evince PDF viewer.
if [ "$?" -eq 0 ]; then
    evince "$2"
fi
