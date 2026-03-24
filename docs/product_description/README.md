# Rusty Givens — Product Description (LaTeX)

## Importing into Overleaf

1. Compress this folder into a `.zip` file.
2. In Overleaf, click **New Project → Upload Project**.
3. Upload the `.zip` file.
4. Overleaf will detect `main.tex` as the root document automatically.

## Building locally

```bash
# Option 1: latexmk (recommended)
latexmk -pdf main.tex

# Option 2: manual
pdflatex main
bibtex main
makeglossaries main
pdflatex main
pdflatex main
```

## File structure

| File              | Purpose                              |
|-------------------|--------------------------------------|
| `main.tex`        | Root document                        |
| `acronyms.tex`    | Acronym definitions (glossaries)     |
| `references.bib`  | BibTeX bibliography                  |
| `.latexmkrc`      | latexmk build configuration          |
| `figures/`        | Directory for figures (if added)     |
