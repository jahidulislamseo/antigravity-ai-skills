---
name: content-writer
slug: aaron-content-writer
displayName: "Content Writer · Human-First SEO & GEO Writing"
summary: "Human-First SEO Writing / Anti-AI Slop / Content Refresh / Traffic Recovery"
description: 'Use when the user asks to "write SEO content", "draft human-first content", "draft a blog post / landing page", "write without sounding like AI", "update outdated content", or "fix traffic/ranking decay". Grounded in Wikipedia Signs of AI Writing and empirical detection research. Two modes: new drafts human-first pages with natural cadence, evidence boundaries, and search intent; refresh diagnoses decay, strips AI patterns, and produces an update plan with GEO guidance. Not for AI-citation/GEO readiness scoring alone — use geo-content-optimizer; not for publish-gate scoring alone — use content-quality-auditor.'
version: "21.0.0"
license: Apache-2.0
compatibility: "Claude Code, Antigravity, and compatible agent-skill hosts"
homepage: "https://github.com/aaron-he-zhu/aaron-marketing-skills"
when_to_use: "Use when writing SEO articles, human-first blog posts, landing pages, or service pages targeting a keyword (mode: new), OR when updating outdated content, refreshing old articles, removing synthetic AI patterns, or recovering pages that lost traffic/rankings (mode: refresh)."
argument-hint: "[--mode new|refresh] <topic/keyword or URL of existing content>"
metadata: {"author": "aaron-he-zhu", "version": "21.0.0", "discipline": "content-engineering", "phase": "implement", "geo-relevance": "high", "hermes": {"tags": ["marketing", "seo-geo", "human-first-writing", "implement"], "category": "seo-geo"}}
---

# Content Writer (Human-First SEO & Anti-AI Slop System)

Writes and refreshes high-converting, authoritative SEO and GEO content across two modes:
- **`new`**: Drafts net-new pages against a target keyword, search intent, and Wikipedia-grounded human-first writing rules.
- **`refresh`**: Diagnoses performance decay and synthetic AI slop on existing URLs, prioritizes updates, and produces a republish plan.

Both modes integrate **Wikipedia's Empirical Signs of AI Writing Research**, **CORE-EEAT constraints**, and **natural cadence asymmetry** so drafts read authentically and survive algorithmic updates.

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
| `new` | "write / draft SEO content", "write human content", net-new page against a keyword, no existing URL | Ready-to-use human-first draft (title, meta, H1/H2 structure, direct answer block, evidence boundaries) |
| `refresh` | "update outdated content", "fix decay", "remove AI patterns", "refresh for [year]", an existing URL that lost traffic/rankings | Decay & slop diagnosis, prioritized update plan, republish strategy, optional refreshed copy |

**Selecting the mode:** honor an explicit `--mode`. Otherwise infer: an existing URL plus a decline/staleness signal → `refresh`; a topic/keyword with no prior version → `new`.

---

## Quick Start

```
# mode: new
Write a human-first SEO article about [topic] targeting the keyword [keyword]
Here is my brief: [brief]. Write content following Wikipedia anti-slop rules.
```

```
# mode: refresh
Refresh this article, remove AI patterns, and update for [year]: [URL/content]
Fix decay and humanize this page: [URL]
```

---

## The 6-Layer Writing Pipeline (Executed in Mode `new` & `refresh`)

```
[Layer 1: Reality-First Research]
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
[Layer 6: Adversarial Self-Audit Pass]
```

### Execution Steps: Mode `new`
1. **Gather Requirements** — confirm target keywords, audience, intent, operational constraints, and competitors.
2. **Load CORE-EEAT & Evidence Boundaries** — apply the 16 high-weight CORE-EEAT items. Never state an outcome without its physical/operational mechanism.
3. **Research and Plan** — analyze SERP format, intent gaps, and local/technical regulations.
4. **Create Optimized Titles** — 2-3 intent-aligned options with clear value propositions.
5. **Write Meta Description** — 145-155 characters with primary entity, direct value, and practical CTA.
6. **Structure and Write (Human Cadence)**:
   - **Direct Answer Block**: Satisfy primary intent in the first 75-100 words (snippet-ready, zero throat-clearing).
   - **H2/H3 Structure**: Match user intent progression with concrete operational steps, data tables, and specific tools/materials.
   - **Cadence Modulation**: Force burstiness asymmetry (mix 4-word punchy sentences with detailed analytical breakdowns).
   - **Actionable Conclusion**: End with immediate next steps, operational caveats, or concrete FAQs. Never write "In conclusion, the future is bright...".
7. **Entity Integration (Zero Keyword Stuffing)**: Integrate Wikidata entities and topical concepts naturally rather than repeating exact matches.
8. **Add Internal / External Links**: 2-5 contextual internal links and 2-3 authoritative external citations tied to specific claims.
9. **Adversarial Anti-AI & CORE-EEAT Self-Check**:
   - Check negative parallelism ("not only... but also") → Rewritten.
   - Check adjective triplets (Rule of Three) → Reduced to single concrete metric.
   - Check em-dash count (≤ 2 per document) → Verified.
   - Check banned lexicon (delve, crucial, elevate, etc.) → Clean.
   - Output a `### Changes Made & Anti-Slop Validation` table.

---

### Execution Steps: Mode `refresh`
1. **Decay & AI-Slop Audit** — detect organic traffic drops (>30% trigger) and scan for synthetic AI markers (rule-of-three, formulaic em-dashes, repetitive sections).
2. **Identify Refresh Opportunities** — map outdated data, broken links, changed search intent, and missing entity coverage.
3. **Define Mechanism Upgrades** — replace generic adjectives with verified specs, updated year figures, and practical case facts.
4. **Rewrite Stale Copy** — apply the 6-Layer Pipeline to rewrite weak sections with asymmetrical cadence.
5. **GEO & Citation Optimization** — format 40-60 word standalone definition blocks and structured comparison tables for AI Overviews / LLM retrieval.
6. **Republish Strategy** — updated publish date for >50% new content, last-modified for 20-50%; update schema and submit recrawl.

---

## Self-Check Quality Gates Before Handoff

Before finalizing any draft, verify:
- [ ] Intent answered in the first 75-100 words without introductory filler.
- [ ] Zero instances of "not only X, but also Y".
- [ ] Zero instances of triplet adjective lists ("X, Y, and Z").
- [ ] Em-dashes capped at 2 or fewer.
- [ ] Zero banned AI marker words (`delve`, `paramount`, `crucial`, `tapestry`, `elevate`, `seamless`).
- [ ] Every claim has a measurable physical or operational mechanism.
- [ ] Sentence lengths vary naturally (burstiness enforced).

---

## Next Best Skill

- **Primary**: [content-quality-auditor](../../tune/content-quality-auditor/SKILL.md) — gate the draft before publishing.
- **Conditional**: [geo-content-optimizer](../geo-content-optimizer/SKILL.md) — verify citation readiness for AI Overviews, Perplexity, and ChatGPT search.
