---
name: content-writer
slug: aaron-content-writer
displayName: "Content Writer · Evidence-First SEO & GEO Writing"
summary: "Evidence-First SEO Writing / Research Accuracy / Markdown Delivery / Content Refresh"
description: 'Use when the user asks to "write SEO content", "draft human-first content", "draft a blog post / landing page", "update outdated content", or "fix traffic decay". Driven by the 30-20-20-15-10-5 Editorial Model: Research Accuracy (30%), Search Intent (20%), Specificity (20%), Natural Voice (15%), SEO Entities (10%), and Subtle Slop Cleanup (5%). Automatically delivers content into structured markdown (.md) documents with SEO Title, Meta Description, Focus Keywords, and verified source citations.'
version: "22.0.0"
license: Apache-2.0
compatibility: "Claude Code, Antigravity, and compatible agent-skill hosts"
homepage: "https://github.com/aaron-he-zhu/aaron-marketing-skills"
when_to_use: "Use when writing evidence-backed SEO articles, human-first blog posts, landing pages, or service pages targeting a keyword (mode: new), OR when updating outdated content with verified citations and fresh data (mode: refresh)."
argument-hint: "[--mode new|refresh] <topic/keyword or URL of existing content>"
metadata: {"author": "aaron-he-zhu", "version": "22.0.0", "discipline": "content-engineering", "phase": "implement", "geo-relevance": "high", "hermes": {"tags": ["marketing", "seo-geo", "evidence-first", "implement"], "category": "seo-geo"}}
---

# Content Writer (Evidence-First SEO System)

Writes and refreshes high-converting, authoritative SEO and GEO content grounded in **research verification, search intent satisfaction, and natural editorial voice**.

---

## ⚖️ The 6-Tier Editorial Priority Architecture

1. **Research Accuracy & Evidence (30%)**: Tie quantitative claims to verifiable records (BBS, WHO, municipal gazettes). Avoid unsubstantiated absolutes. Conclude with a Sources & References section.
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
3. End with verifiable **Sources & References**.
