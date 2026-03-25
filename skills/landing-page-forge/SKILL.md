---
name: landing-page-forge
description: Create high-conversion landing pages from a specified page, topic, or content source. Use when the user wants to generate a new landing page, redesign an existing landing page, extract visual hooks from videos, build a promo page from page content, or combine frontend design with ffmpeg-based video keyframe extraction for cover images. Supports dark-impact landing pages, video-cover extraction, content summarization, CTA sections, comments/social-proof blocks, and page-ready HTML output.
---

# Landing Page Forge

Create a landing page from a target page, video set, or content topic.

## Workflow

1. Inspect the target page and identify:
   - page theme
   - top content blocks
   - strongest clickable hooks
   - candidate videos/images for hero visuals
2. If videos are involved, extract 1-3 keyframes with ffmpeg.
3. Choose a visual direction before coding.
   - Prefer bold, high-contrast aesthetics.
   - For attention-first promo pages, default to dark-impact style unless user asks otherwise.
4. Build a single-file HTML landing page first unless the user requests a framework.
5. Include these sections unless the user says otherwise:
   - hero
   - featured cards
   - CTA
   - trust/social proof
   - community or context intro
6. Link through to the original source page when the user wants traffic handoff.
7. Save assets under `assets/landing/` when working inside a repo/workspace.

## Design Rules

- Use the installed frontend-design skill patterns: strong typography, intentional visual direction, non-generic layout.
- Avoid bland SaaS styling.
- Make the first screen do the selling.
- Use one dominant accent color family and keep the rest restrained.
- Prefer large imagery, layered gradients, subtle noise, and strong contrast.

## Video Cover Extraction

When the user wants a cover from video content:

1. Use `ffmpeg` via the bundled script.
2. Extract multiple frames first, then choose the clearest/highest-impact frame.
3. Prefer frames with:
   - clear subject
   - strong silhouette
   - readable object composition
   - minimal motion blur
4. Save final cover files into `assets/landing/`.

Use the bundled script:
- `scripts/extract_keyframes.sh <video-path> <output-dir>`

If multiple videos are provided, run it for each and pick the best result.

## Bundled Resources

- `scripts/extract_keyframes.sh` — ffmpeg helper for grabbing candidate keyframes
- `references/layout-patterns.md` — landing page structure and content mapping guidance
- `assets/` — destination for generated cover images and reusable landing assets

## Output Expectations

Produce:
- a ready-to-open HTML landing page
- local asset references when possible
- click-through links to the original target content
- concise, high-pressure copy suitable for conversion

## File Conventions

- Main page: `index.html` unless user asks for another filename
- Assets: `assets/landing/...`
- Optional alternate concept files may use descriptive names like `landing-dark.html`

## When More Context Is Needed

Read `references/layout-patterns.md` when deciding how to map page content into a landing structure.

## Notes

- Keep the implementation practical and shippable.
- Prefer deterministic asset generation steps over hand-wavy instructions.
- If video input is not directly downloadable, use available tools to access local files, page media, or browser-extracted captures before falling back to screenshots.
