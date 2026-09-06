---
name: content-writer
slug: aaron-content-writer
displayName: "Content Writer · Evidence-First SEO & GEO Writing"
summary: "Evidence-First SEO Writing / External Hyperlink Citations / Markdown Delivery / Content Refresh"
description: 'Use when the user asks to "write SEO content", "draft human-first content", "draft a blog post / landing page", "update outdated content", or "fix traffic decay". Governed by the 10-Stage Pipeline: Research → Verify → Search Intent → Local Context → Outline → Natural Draft → SEO → AI-pattern Cleanup → Fact Check → Final Human Edit. Employs the 30-20-20-15-10-5 Editorial Model. Automatically delivers content into structured markdown (.md) documents with SEO Title, Meta Description, Focus Keywords, and active external citation hyperlinks.'
version: "22.2.0"
license: Apache-2.0
compatibility: "Claude Code, Antigravity, and compatible agent-skill hosts"
homepage: "https://github.com/aaron-he-zhu/aaron-marketing-skills"
when_to_use: "Use when writing evidence-backed SEO articles, human-first blog posts, landing pages, or service pages targeting a keyword (mode: new), OR when updating outdated content with verified citations and fresh data (mode: refresh)."
argument-hint: "[--mode new|refresh] <topic/keyword or URL of existing content>"
metadata: {"author": "aaron-he-zhu", "version": "22.2.0", "discipline": "content-engineering", "phase": "implement", "geo-relevance": "high", "hermes": {"tags": ["marketing", "seo-geo", "evidence-first", "implement"], "category": "seo-geo"}}
---

# Content Writer (Evidence-First SEO System)

Writes and refreshes high-converting, authoritative SEO and GEO content grounded in **research verification, active external citations, search intent satisfaction, and natural editorial voice**.

---

## 🎯 The 10-Stage Production Pipeline

```
[1. Deep Research] ➔ [2. Data Verification & Live Sources] ➔ [3. Intent Resolution]
        │
        ▼
[4. First-Hand/Local Context] ➔ [5. Structural Outline] ➔ [6. Natural Voice Draft]
        │
        ▼
[7. SEO & Outbound Hyperlinks] ➔ [8. Subtle AI-Pattern Polish]
        │
        ▼
[9. Fact & Citation Check] ➔ [10. Final Human Editorial Edit]
```

### 🧠 Core Mindset
- ❌ **Do NOT think:** "How do I avoid sounding like an AI?" (creates over-engineered, mechanical phrasing).
- ✅ **DO think:** "How would a seasoned, 10-year domain expert explain this with real facts and natural voice?"

---

## ⚖️ The 6-Tier Editorial Priority Architecture

1. **Research Accuracy & Active Hyperlinks (30%)**: Never cite sources by name alone. Directly embed active, clickable markdown links (`[Source Name](https://...)`) to authoritative institutions (`.gov`, `.org`, `.int`, `.edu`). Tie metrics to specific survey years, reports, or tables (e.g. BBS HIES 2022, WHO 2016 Air Quality Table 1).
2. **Search Intent Match (20%)**: Direct Answer Block within the first 75-100 words.
3. **Granular Specificity & Mechanisms (20%)**: Specific standards, tools, municipal wards, and operational processes.
4. **Natural Editorial Cadence (15%)**: Varied sentence lengths, authentic voice, natural transition without artificial punctuation bans.
5. **SEO & Entity Topology (10%)**: Frontmatter with Title, 145-160 char Meta Description, Focus Keyword, and natural entity relationships.
6. **Subtle Cleanup (5%)**: Strip hollow buzzwords (`delve`, `pivotal`, `tapestry`, `elevate`, `seamless`). Never append internal audit scorecards to client deliverables.

---

## 📌 Deliverable Format Contract

All content outputs must:
1. Save directly into a `.md` file in the workspace.
2. Include frontmatter metadata at the top:
   - `title`, `meta_description`, `focus_keyword`, `secondary_keywords`, `search_intent`, `word_count`, `file_path`.
3. Include active in-text and ending external citation hyperlinks to authoritative primary sources.
