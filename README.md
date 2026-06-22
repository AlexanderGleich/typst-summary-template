# Material Summary Template

A dense, multi-column landscape Typst template for concise study notes and material summaries.

## Usage

```bash
typst compile main.typ              # Generate main.pdf
typst watch main.typ                # Watch for changes and recompile on save
typst compile main.typ output.pdf   # Custom output path
```

- **compile** — Compiles the `.typ` file once and outputs a PDF.
- **watch** — Watches the source file for changes and automatically recompiles; great for live preview.

## CI

On every push/PR to `main`, GitHub Actions compiles `main.typ` and uploads the resulting PDF as an artifact.
