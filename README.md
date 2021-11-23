## Build

Run `make cv` to build the CV, which will execute the following:

```bash
xelatex bmorcos_cv.tex
biber bmorcos_cv
xelatex bmorcos_cv.tex
```

Run `make letter` to build the cover letter, which will execute the following:
```bash
xelatex bmorcos_letter.tex
xelatex bmorcos_letter.tex
```

Running `make` will build both the CV and cover letter.

## Credits

This CV style was adapted from Nadorrano's already modified version:

Original author:
Adrien Friggeri (adrien@friggeri.net)
https://github.com/afriggeri/CV

Modified by:
Nadorrano
https://github.com/Nadorrano/cv-friggeri-x


The cover letter style was based on the CV style noted above.
