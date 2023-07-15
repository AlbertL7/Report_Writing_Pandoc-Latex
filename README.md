# Report_Writing_Pandoc-Latex

Create Professional Reports Using Pandoc and Latex from Markdown. Mainly started doing this because school did not provide a template for lab reports. Every teacher wanted something different, this report has hit all wickets thus far and looks professional.

## Install

### Clone Repository
- If you do not clone this in your home directory the Generate_Report.sh script will not add the eisvogel.latex template to the /usr/share/pandoc/data/templates/ folder and you will have to add it manually or modify the script.

`git clone https://github.com/AlbertL7/Report_Writing_Pandoc-Latex.git`

### Install Pandoc
`sudo apt install pandoc`

### Install latex
`sudo apt install latex*`
`sudo apt-get install texlive-full`

### Make Generate_Report.sh Executable
`chmod +x Generate_Report.sh`

## How to Use

### Example Usage

`./Generate_Report.sh Markdown/School_Lab_Template.md school_lab.pdf`

#### NOtE
- The picture will not populate in the example school_lab.md template, it will be replaced with the description
- This was tested on the latest release of Kali Linux date 07/15/2023
