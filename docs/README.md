# Documentation (Read the Docs)

This directory contains the source for the **public documentation** hosted on [Read the Docs](https://readthedocs.org).

## Scope

!!! warning "Free edition only"
    This documentation covers **only the free edition** of Rusty Givens. Pro features (observability, redundancy, Bad Data Detection) live in dedicated directories (`crates/pro/`, `case_study/pro/`) and are **not** documented here. Those paths are excluded from the public repository via `.gitignore`.

## Building locally

```bash
pip install -r docs/requirements.txt
mkdocs serve
```

Open [http://127.0.0.1:8000](http://127.0.0.1:8000).

## Read the Docs setup

1. Import the project at [readthedocs.org](https://readthedocs.org/dashboard/import/).
2. Connect your Git repository (GitHub, GitLab, etc.).
3. Ensure the **default branch** used for builds is the public/free branch (no Pro crates).
4. Read the Docs will use `.readthedocs.yaml` and `mkdocs.yml` automatically.
5. Update `site_url` in `mkdocs.yml` after creating the RTD project.

## File structure

| File | Purpose |
|------|---------|
| `index.md` | Home page |
| `quickstart.md` | Build and run instructions |
| `architecture.md` | Module structure |
| `api.md` | REST API reference |
| `case-study.md` | Case study overview |
| `references.md` | Academic references |
| `assets/logo.png` | Logo for theme |

## How to cite

If you use Rusty Givens in academic work, please cite:

**BibTeX**

```bibtex
@software{rusty_givens,
  author = {Jendrian, Harald},
  title = {Rusty Givens: A modular power system state estimator in Rust},
  year = {2025},
  url = {https://github.com/haraldjendrian/rusty-givens}
}
```

**Plain text**

> Jendrian, H. (2025). Rusty Givens: A modular power system state estimator in Rust. https://github.com/haraldjendrian/rusty-givens
