Meep/MPB syntax highlighting
============================
[Meep][meep] and [MIT Photonic Bands (MPB)][mpb] are free and open source numerical electromagnetic simulation programs. They both use a domain specific language based on GNU Guile (itself a Scheme dialect) as input. These control scripts are fed to the program to specify the setup and desired calculation.

This package provides syntax coloring/highlighting for people who use the gedit text editor to write control scripts. Almost all Meep/MPB classes, functions, variables, and constants are properly highlighted.

Installation
------------
1. Download the ZIP archive and extract it anywhere.

2. Run the installation script as superuser in the folder where you extracted the archive.

        sudo ./install.sh

Suggestions and contributions are welcome. If you fixed it yourself, please submit a pull request so everyone can benefit! 

[meep]: http://ab-initio.mit.edu/meep
[mpb]: http://ab-initio.mit.edu/mpb

