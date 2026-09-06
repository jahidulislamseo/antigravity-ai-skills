---
name: content-writer
slug: aaron-content-writer
displayName: "Content Writer · Human-First SEO & GEO Writing"
summary: "Human-First SEO Writing / Anti-AI Slop / Markdown File Delivery / Traffic Recovery"
description: 'Use when the user asks to "write SEO content", "draft human-first content", "draft a blog post / landing page", "write without sounding like AI", "update outdated content", or "fix traffic/ranking decay". Automatically delivers content into structured markdown (.md) documents with SEO Title, Meta Description, and Focus Keywords. Grounded in Wikipedia Signs of AI Writing and empirical detection research. Two modes: new drafts human-first pages with natural cadence, evidence boundaries, and search intent; refresh diagnoses decay, strips AI patterns, and produces an update plan with GEO guidance.'
version: "21.1.0"
license: Apache-2.0
compatibility: "Claude Code, Antigravity, and compatible agent-skill hosts"
homepage: "https://github.com/aaron-he-zhu/aaron-marketing-skills"
when_to_use: "Use when writing SEO articles, human-first blog posts, landing pages, or service pages targeting a keyword (mode: new), OR when updating outdated content, refreshing old articles, removing synthetic AI patterns, or recovering pages that lost traffic/rankings (mode: refresh)."
argument-hint: "[--mode new|refresh] <topic/keyword or URL of existing content>"
metadata: {"author": "aaron-he-zhu", "version": "21.1.0", "discipline": "content-engineering", "phase": "implement", "geo-relevance": "high", "hermes": {"tags": ["marketing", "seo-geo", "human-first-writing", "implement"], "category": "seo-geo"}}
---

# Content Writer (Human-First SEO & Anti-AI Slop System)

Writes and refreshes high-converting, authoritative SEO and GEO content across two modes:
- **`new`**: Drafts net-new pages against a target keyword, search intent, and Wikipedia-grounded human-first writing rules.
- **`refresh`**: Diagnoses performance decay and synthetic AI slop on existing URLs, prioritizes updates, and produces a republish plan.

Both modes integrate **Wikipedia's Empirical Signs of AI Writing Research**, **CORE-EEAT constraints**, and **natural cadence asymmetry**.

---

## 📌 Mandatory File Delivery & Metadata Contract

Whenever writing content in mode `new` or `refresh`, this skill **MUST**:
1. **Deliver into a Markdown File**: Write the full article directly into a designated `.md` file (e.g., `./content/<keyword-slug>.md` or workspace directory).
2. **Include Structured Metadata Header**: Prepend the document with YAML frontmatter and a clean visual summary:

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

## The Wikipedia Anti-AI Writing & Human-First System

Rooted in Wikipedia's *Signs of AI Writing* and academic AI detection analysis:

### 1. The 3 Foundations
1. **Probabilistic Assessment Reality**: Detectors measure perplexity and burstiness; they have no ground truth. Monotonous formal writing triggers false positives; generic paraphrasing creates false negatives. High factual density and varied cadence provide genuine authenticity.
2. **Wikipedia Field-Guide Anti-Patterns**: Strict elimination of formulaic adjective triplets ("rule of three"), negative parallelism ("not only X, but also Y"), excessive em-dashes, and LLM marker words.
3. **Human Perceptual Calibration**: Humans fail subjective "vibe" tests when judging AI writing. Quality must be enforced through **hard evidence boundaries, verifiable operational mechanisms, and asymmetrical sentence rhythms**.

### 2. Banned Lexicon & Direct Replacements

| Banned AI Marker | Why It Triggers Detection / Fatigue | Direct Replacement / Fix |
|---|---|---|
| `delve / delving` | Extreme statistical over-representation in LLMs | *examine, inspect, analyze, break down*, or cut |
| `tapestry / testament` | Figurative cliché with zero informational value | State the direct relationship, timeline, or metric |
| `pivotal / paramount / crucial` | Inflates importance without providing evidence | Show the specific operational, legal, or cost impact |
| `elevate / transform` | Abstract marketing vaporware | State the concrete metric or operational improvement |
| `seamless / effortlessly` | Unrealistic claim ignoring real friction/trade-offs | Detail actual workflow steps and handoff points |
| `multifaceted / comprehensive` | Generic placeholder dodging sub-components | List the actual 2-3 specific elements addressed |
| `in today's fast-paced world` | Empty introductory throat-clearing | Start immediately with the core problem, fact, or metric |

### 3. Forbidden Syntactic Patterns
1. **Negative Parallelism Ban**: Never write "not only X, but also Y". Use two independent statements or straightforward conjunctions.
2. **Rule-of-Three Ban**: Never stack 3 symmetrical adjectives/concepts (e.g., "innovative, robust, and scalable"). Use 1 precise descriptor or cite the metric.
3. **Em-Dash Cap**: Maximum 2 em-dashes (`—`) per entire document. Prefer periods or clean commas.
4. **Cadence Asymmetry (Variable Burstiness)**: Deliberately mix sentence lengths (e.g., 4-word punchy sentence → 24-word analytical mechanism → 11-word conclusion). Never write uniform 15-20 word sentences.
5. **Mechanism Over Adjectives**: Never claim an outcome without naming the physical or operational mechanism (tool, material, standard, building code, or formula).

---

## Mode Selector

| Mode | Trigger | Output |
|------|---------|--------|
| `new` | "write / draft SEO content", "write human content", net-new page against a keyword, no existing URL | Complete `.md` file on disk with Title, Meta, Focus Keyword, H1/H2 structure, and direct answer block |
| `refresh` | "update outdated content", "fix decay", "remove AI patterns", "refresh for [year]", an existing URL that lost traffic/rankings | Updated `.md` file, decay diagnosis, prioritized update plan, and republish strategy |

---

## The 6-Layer Writing Pipeline (Executed in Mode `new` & `refresh`)

### Execution Steps: Mode `new`
1. **Gather Requirements & Metadata** — confirm target keywords, audience, intent, word count, Title, Meta, and Focus Keyword.
2. **Load CORE-EEAT & Evidence Boundaries** — apply the 16 high-weight CORE-EEAT items. Never state an outcome without its physical/operational mechanism.
3. **Research and Plan** — analyze SERP format, intent gaps, and local/technical regulations.
4. **Create Optimized Titles & Meta Description** — formulate the H1 title, 145-160 char meta description, and primary focus keyword.
5. **Structure and Write (Human Cadence)**:
   - **Direct Answer Block**: Satisfy primary intent in the first 75-100 words (snippet-ready, zero throat-clearing).
   - **H2/H3 Structure**: Match user intent progression with concrete operational steps, data tables, and specific tools/materials.
   - **Cadence Modulation**: Force burstiness asymmetry (mix 4-word punchy sentences with detailed analytical breakdowns).
   - **Actionable Conclusion**: End with immediate next steps, operational caveats, or concrete FAQs. Never write "In conclusion, the future is bright...".
6. **Entity Integration (Zero Keyword Stuffing)**: Integrate Wikidata entities and topical concepts naturally rather than repeating exact matches.
7. **Write Deliverable to File**: Save the complete markdown article directly to an `.md` file in the project workspace.
8. **Adversarial Anti-AI & CORE-EEAT Self-Check**:
   - Check negative parallelism ("not only... but also") → Rewritten.
   - Check adjective triplets (Rule of Three) → Reduced to single concrete metric.
   - Check em-dash count (≤ 2 per document) → Verified.
   - Check banned lexicon (delve, crucial, elevate, etc.) → Clean.
   - Output a `### Changes Made & Anti-Slop Validation` table and confirm the generated `.md` file path.

---

## Next Best Skill

- **Primary**: [content-quality-auditor](../../tune/content-quality-auditor/SKILL.md) — gate the draft before publishing.
- **Conditional**: [geo-content-optimizer](../geo-content-optimizer/SKILL.md) — verify citation readiness for AI Overviews, Perplexity, and ChatGPT search.
