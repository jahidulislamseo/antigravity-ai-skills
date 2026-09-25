---
name: academic-thesis-typesetter
description: "Use when formatting, standardizing, and typesetting academic dissertations, Master of Surgery (MS), Doctor of Medicine (MD), PhD, or postgraduate theses into publish-ready DOCX and PDF deliverables conforming to university standards (NITOR, BSMMU, medical colleges). Enforces strict typography hierarchies (Times New Roman, pure black #000000), 4-way centered chapter divider sheets with 1.5 pt solid top and bottom borders, automated blank-page elimination, inline non-overlapping image placement, dynamic Roman/Arabic pagination, and automated Table of Contents synchronization with Microsoft Word AppleScript PDF compilation."
metadata:
  version: 1.0.0
  author: Antigravity AI
---

# Academic Thesis & Medical Dissertation Typesetter

Engineered for precision academic publishing, this skill transforms unformatted, inconsistent draft documents into certified, institutionally compliant Master of Surgery (MS), Doctor of Medicine (MD), and PhD dissertations.

It automates layout normalization, eliminates phantom blank pages, standardizes institutional logos, constructs 4-way centered chapter divider sheets with 1.5 pt solid rules, enforces pure-black typography hierarchies, and dynamically aligns Table of Contents with compiled PDF page footers.

---

## 1. Architectural Principles & Zero-Error Mandates

1. **Zero Cross-Contamination**: Each thesis must remain 100% isolated. Candidate text, clinical photographs, radiographs, patient data tables, and appendices must never be transferred or shared across different documents.
2. **Absolute Blank Page Elimination**: Academic thesis binders penalize accidental blank pages. Any paragraph consisting of empty whitespace immediately preceding a page break (`<w:br w:type="page"/>`) or a heading with `pageBreakBefore = True` must be systematically stripped.
3. **Pure-Black Monochrome Compliance**: Academic binding requires clean, ink-efficient, professional printing. All text runs, headings, table borders, and divider rules must be set to `#000000` (RGB `0, 0, 0`). Strip all default Microsoft Word accent blues (`#2E74B5`, `#1F4E79`) and gray shades.
4. **Inline Image Anchoring**: All figures, diagrams, and radiological plates must be set to `inline` (in text flow) with horizontal centering. Floating frames (`w:anchor`) that cause text displacement or image overlap are strictly prohibited.
5. **Exact Institutional Logo Ratios**: Cover page institutional insignias (e.g., NITOR, BSMMU, Medical College crests) must be horizontally centered and scaled to standard academic proportions (e.g., primary emblem: 2.0" width x 1.71" height; university crest: 1.22" width x 1.50" height).

---

## 2. Typesetting & Typography Hierarchy

| Document Element | Font Family | Size | Weight | Alignment | Spacing / Case |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Cover Page Main Title** | Times New Roman | 16–20 pt | Bold | Center | ALL UPPERCASE, 1.15 line spacing |
| **Candidate Name** | Times New Roman | 16–20 pt | Bold | Center | Title Case or UPPERCASE |
| **Institutional Affiliation** | Times New Roman | 14 pt | Bold / Regular | Center | Title Case, 1.15 line spacing |
| **Chapter Divider Page Title** | Times New Roman | 20 pt | Bold | Center (H & V) | ALL UPPERCASE, 1.5 pt solid top & bottom rules |
| **Main Chapter Title (Body)** | Times New Roman | 16 pt | Bold | Center | ALL UPPERCASE, 12 pt after |
| **Primary Section (e.g. 1.1)** | Times New Roman | 14 pt | Bold | Left | Title Case, 6 pt after |
| **Secondary Sub-heading** | Times New Roman | 12 pt | Bold | Left | Title Case, 4 pt after |
| **Body Paragraphs** | Times New Roman | 12 pt | Regular | Justified | 1.5 line spacing, 0 pt after, First line indent 0.5" |
| **Table Headings & Cells** | Times New Roman | 10–11 pt | Head: Bold, Cells: Reg | Center/Left | 1.0–1.15 line spacing, 0 pt after |
| **Figure / Table Captions** | Times New Roman | 11–12 pt | Bold Title, Reg Desc | Center | 6 pt before, 6 pt after |
| **Page Footers (Page Number)**| Times New Roman | 11 pt | Regular | Center | Dynamic `PAGE` field |

---

## 3. Chapter Divider Sheet Specification

Dedicated chapter divider sheets separate major dissertation sections (Introduction, Literature Review, Methodology, Results, Discussion, Conclusion, Recommendations, References).

### WordprocessingML (OOXML) Definition:
```xml
<w:pPr>
  <w:jc w:val="center"/>
  <w:pBdr>
    <w:top w:val="single" w:sz="12" w:space="18" w:color="000000"/>
    <w:bottom w:val="single" w:sz="12" w:space="18" w:color="000000"/>
  </w:pBdr>
  <w:pageBreakBefore w:val="true"/>
</w:pPr>
<w:rPr>
  <w:rFonts w:ascii="Times New Roman" w:hAnsi="Times New Roman"/>
  <w:b/>
  <w:sz w:val="40"/>
  <w:color w:val="000000"/>
</w:rPr>
```
* **Top & Bottom Rules**: Solid single line, width `12` (1.5 points), spacing `18` (approx 2.25 pt offset), color `000000`.
* **Vertical Page Centering**: Section or page container set with `<w:vAlign w:val="center"/>`.

---

## 4. Dual Pagination & Section Break Architecture

Dissertations must follow standard dual-pagination:
1. **Section 1: Front Matter**
   - Title Page, Declaration, Certificates, Acknowledgements, Table of Contents, Lists of Tables & Figures, Abbreviations, Abstract.
   - Page numbering: **Lowercase Roman numerals** (`i, ii, iii...`).
   - OpenXML: `<w:pgNumType w:fmt="lowerRoman" w:start="1"/>`.
   - Title/Cover page suppresses page number in footer (`differentFirstPageHeaderFooter`).
2. **Section 2: Main Dissertation Body**
   - Starts precisely at **Chapter 1: Introduction**.
   - Page numbering: **Arabic numerals** (`1, 2, 3...`) starting at **1**.
   - OpenXML: `<w:pgNumType w:fmt="decimal" w:start="1"/>`.
   - Continuous Arabic pagination runs through all subsequent chapters, references, and appendices.

---

## 5. Automated Python Execution Pipeline

The skill provides an automated CLI script: `scripts/typeset_thesis.py`.

### Execution Command:
```bash
python3 scripts/typeset_thesis.py \
  --input "RawDraft.docx" \
  --output "Thesis_Final_Copy_2026.docx" \
  --pdf "Thesis_Final_Copy_2026.pdf" \
  --sync-toc
```

### Pipeline Workflow:
1. **Sanitize & Strip Ghost Paragraphs**: Scans document AST. Removes empty paragraphs preceding page breaks, collapses multiple consecutive spacer paragraphs.
2. **Standardize Typography**: Walks all runs in paragraphs and tables. Overwrites fonts to `Times New Roman`, forces text color to `RGBColor(0, 0, 0)`, removes arbitrary character highlights.
3. **Format Chapter Divider Sheets**: Detects all chapter demarcation points. Converts standalone chapter titles into 4-way centered sheets with 1.5 pt top and bottom rules.
4. **Enforce Dual Pagination**: Inserts clean Section Breaks (`w:sectPr`) between Front Matter and Chapter 1. Sets Roman numerals for Section 1 and Arabic numerals starting at 1 for Section 2.
5. **Compile to PDF via Microsoft Word AppleScript**:
   ```applescript
   tell application "Microsoft Word"
       open docPath
       set doc to active document
       save as doc file name pdfPath file format format PDF
       close doc saving no
   end tell
   ```
6. **Dynamic TOC/LOT/LOF Sync**:
   - Parses the generated PDF using PyPDF / Swift PDFKit to read exact page numbers where headings and captions land.
   - Updates the tab-separated or table-based TOC cells in the `.docx`.
   - Re-compiles the `.docx` to `.pdf` for a 100% synchronized, print-perfect finish.
7. **Automated Audit**: Runs `scripts/audit_thesis.py` to confirm `0 blank pages`, `0 image overlaps`, and exact TOC alignment.
