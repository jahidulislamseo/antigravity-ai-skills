---
name: human-first-writer
description: "Use when the user asks to write natural, human-first, high-converting SEO content, articles, service pages, or local landing pages that completely eliminate AI slop, formulaic rhythms, and synthetic markers. Automatically outputs deliverables into structured markdown (.md) documents with SEO Title, Meta Description, and Focus Keywords. Grounded in Wikipedia's Signs of AI Writing and empirical detection research. Trigger on: write human content, human-first writing, remove AI patterns, natural SEO article, write without sounding like AI, anti-AI slop content."
metadata:
  version: "1.1.0"
  author: "Antigravity AI"
  discipline: "content-engineering"
---

# Human-First Content Writer (Wikipedia-Grounded Anti-Slop System)

A production-grade content writing framework engineered to eliminate machine-learning generation artifacts, predictable syntactic rhythms, and synthetic fluff. Built upon empirical findings from Wikipedia's *Signs of AI Writing* and academic AI detection analysis.

---

## 📌 Mandatory File Delivery & Metadata Contract

Whenever writing or drafting content, this skill **MUST**:
1. **Write to a Markdown File**: Output the complete, production-ready deliverable into a dedicated `.md` file (e.g., `./content/<keyword-slug>.md` or workspace path) using file creation tools.
2. **Include Mandatory Metadata Header**: Prepend every document with structured frontmatter and visual summary:

```markdown
---
title: "[SEO-Optimized Title | Angle & Scope]"
meta_description: "[145-160 characters with primary entity, direct value, and practical CTA]"
focus_keyword: "[Primary Focus Keyword]"
secondary_keywords: ["[Secondary Keyword 1]", "[Secondary Keyword 2]", "[Entity 3]"]
search_intent: "Informational | Commercial | Transactional | Navigational"
word_count: [Target Word Count]
date: "YYYY-MM-DD"
file_path: "./content/<keyword-slug>.md"
---

# [H1 Title Matching the Target SEO Angle]

**Focus Keyword**: `[Primary Focus Keyword]`  
**Meta Description**: *[145-160 Char Meta Description]*  

---
```

---

## The 3 Foundations (From Wikipedia Research)

1. **Probabilistic Assessment Reality**:
   - Detectors measure perplexity and burstiness; they do not possess ground truth.
   - Non-native English and ultra-formal corporate prose trigger false positives; generic paraphrasing produces false negatives.
   - **Core Mandate:** Do not write to "trick" algorithms. Write with high factual density, domain specifics, and varied structural cadence so the content is inherently authentic.

2. **Wikipedia Field-Guide Anti-Patterns**:
   - Elimination of formulaic triplets ("rule of three" adjective stacks).
   - Elimination of negative parallelism ("not only X, but also Y").
   - Elimination of formulaic em-dash parentheticals.
   - Elimination of ubiquitous AI vocabulary ("delve", "tapestry", "multifaceted", "transformative").
   - Elimination of predictable concluding platitudes ("In conclusion, the future looks bright...").

3. **Human Perceptual Calibration**:
   - Humans often fail random-chance tests distinguishing machine vs human writing when judging tone alone.
   - Grounded truth lives in **verifiable facts, local operational realities, real constraints, and precise domain mechanics**—elements LLMs cannot synthesize from broad statistical averages.

---

## Banned AI Slop Lexicon & Replacements

| Banned AI Marker | Why It Triggers Detection / Fatigue | Direct Replacement / Fix |
|---|---|---|
| `delve / delving` | Statistical over-representation in LLM pre-training | *examine, look at, break down, analyze*, or cut entirely |
| `tapestry / testament` | Figurative cliché with zero informational value | State the direct relationship or specific timeline |
| `pivotal / paramount / crucial` | Artificial inflation of importance without proof | Show the financial, operational, or legal consequence |
| `elevate / transform` | Vague marketing vaporware | State the exact metric or operational outcome |
| `seamless / effortlessly` | Unrealistic absolute claim; ignores practical trade-offs | Detail the actual integration steps and friction points |
| `multifaceted / comprehensive` | Generic filler to avoid explaining concrete sub-components | List the actual 2-3 specific elements addressed |
| `in today's fast-paced world` | Empty introductory placeholder | Start immediately with the core problem, fact, or metric |
| `not only [X], but also [Y]` | Overused negative parallelism structure | Use two direct independent statements or straightforward conjunctions |
| `X, Y, and Z` (Adjective triplets) | Symmetrical rule-of-three cadence (e.g. "robust, scalable, and secure") | Keep only the single most accurate adjective, or specify the metric |
| `— [em dash clause] —` | Punctuation reflex used to mimic conversational sophistication | Use clean periods or natural comma structures |

---

## The 6-Layer Human-First Writing Pipeline

```
[Layer 1: Reality-First Research & Metadata Mapping]
       │
       ▼
[Layer 2: Hard Specificity & Evidence Boundaries]
       │
       ▼
[Layer 3: Asymmetrical Cadence (Burstiness & Voice)]
       │
       ▼
[Layer 4: Strip Synthetic Rhetoric & Tropes]
       │
       ▼
[Layer 5: Intent & Entity-Driven SEO (Zero Keyword Stuffing)]
       │
       ▼
[Layer 6: Adversarial Self-Audit & .md File Generation]
```

### Layer 1: Reality-First Research & Metadata Mapping
- Map primary focus keyword, search intent, and secondary entities.
- Prepare frontmatter metadata: SEO Title, Meta Description (145-160 chars), Focus Keyword.
- Identify concrete domain terms, tools, materials, codes, or regulations.

### Layer 2: Hard Specificity & Evidence Boundaries
- **Anti-Vagueness Rule:** Never state an outcome without the mechanism.
  - *Bad (AI):* "Our team provides comprehensive roofing solutions that withstand extreme weather."
  - *Good (Human-First):* "We install 24-gauge standing seam metal panels with double-lock mechanical seams, rated for 130 mph coastal wind loads under Florida Building Code TAS 125."

### Layer 3: Asymmetrical Cadence (Burstiness & Natural Rhythm)
- LLMs default to medium-length sentences with balanced coordinate clauses.
- **Enforce Rhythm Asymmetry:**
  - One-sentence punchy paragraph.
  - Followed by a detailed 3-sentence breakdown explaining the mechanism.
  - Followed by a fragment or practical note.
  - Vary sentence lengths deliberately: 4 words, 22 words, 11 words, 6 words.

### Layer 4: Strip Synthetic Rhetoric
- Remove introductory throat-clearing ("When it comes to...", "It is important to remember that...").
- Cut all repetitive "wrap-up" conclusion summaries. End with immediate next actions, operational caveats, or concrete FAQs.

### Layer 5: Intent & Entity-Driven SEO
- Satisfy user intent in the first 100 words (the Direct Answer block).
- Naturally integrate Wikidata/schema entities rather than repeating exact-match keywords.
- Structure headings (`H2`, `H3`) as clear operational answers, not philosophical questions.

### Layer 6: Adversarial Self-Audit Pass & File Generation
Run every draft through the **Wikipedia Signs Audit Checklist**:
1. Does any paragraph contain a "not only X, but also Y" sentence? (If yes, rewrite).
2. Are there triplet adjective lists? (If yes, reduce to 1 concrete descriptor).
3. Are there more than 2 em-dashes across the entire article? (If yes, replace with periods).
4. Does the conclusion summarize what was already stated? (If yes, replace with next steps or cut).
5. Does every claim have an operational mechanism attached? (If no, add evidence or delete claim).
6. **File Delivery Check**: Write the complete markdown deliverable to disk and confirm path to user.

---

## Operating Command
When activated, this skill generates the complete deliverable into a `.md` file with Title, Meta Description, and Focus Keywords, presents the content to the user, and confirms zero AI-slop violations.
