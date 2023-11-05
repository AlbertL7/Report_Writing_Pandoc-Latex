# Report_Writing_Pandoc-Latex

Create Professional Reports Using Pandoc and Latex from Markdown. Mainly started doing this because school did not provide a template for lab reports. Every teacher wanted something different, this report hits all wickets thus far and looks professional.

## Install

### Clone Repository
- If you do not clone this in your home directory the Generate_Report.sh script will not add the eisvogel.latex template to the /usr/share/pandoc/data/templates/ folder and you will have to add it manually or modify the script.

`git clone https://github.com/AlbertL7/Report_Writing_Pandoc-Latex.git`

### Update / Upgrade  
`sudo apt-get update`

`sudo apt-get upgrade`

### Install Pandoc
`sudo apt install pandoc`

### Install Latex
`sudo apt install latex*`

`sudo apt-get install texlive-full`

### Install Evince
`sudo apt install evince`

### Make Generate_Report.sh Executable
`chmod +x Generate_Report.sh`

## How to Use

- If the eisvogel template is not successfully copying run without "sudo". IF it is still not working you can use the following command
  
`cp ~/Report_Writing_Pandoc-Latex/Eisvogal_Template/eisvogel.latex /usr/share/pandoc/data/templates/eisvogel.latex`

### Example Usage

`./Generate_Report.sh Markdown/School_Lab_Template.md school_lab.pdf`

#### NOTE
- The picture will not populate in the example school_lab.md template, it will be replaced with the description
- This was tested on the latest release of Kali Linux date 07/15/2023

## Colors 

- (https://github.com/noraj/OSCP-Exam-Report-Template-Markdown)

| titlepage-color | titlepage-text-color | titlepage-rule-color |
|-----------------|----------------------|----------------------|
| DC143C (Crimson) | FFFFFF (White)       | FFFFFF (White)       |
| 00FF7F (SpringGreen) | 006400 (DarkGreen) | 000000 (Black)       |
| 1E90FF (DodgerBlue) | FFFAFA (Snow)       | FFFAFA (Snow)       |
| 483D8B (DarkSlateBlue) | FFFAFA (Snow)     | FFFAFA (Snow)        |
| FFD700 (Gold) | 000000 (Black)           | 000000 (Black)       |
| FFEFD5 (PapayaWhip) | 000000 (Black)      | 000000 (Black)       |
| FF8C00 (DarkOrange) | 000000 (Black)      | 000000 (Black)       |
| FFEF96 (no name) | 50394C (no name)      | 50394C (no name)     |

- Syntax highlight themes can be listed with pandoc --list-highlight-styles.

