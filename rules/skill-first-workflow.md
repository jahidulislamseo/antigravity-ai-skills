# Global Agent Directives & 3-Step Execution Workflow

## 1. The Core 3-Step Execution Protocol
Whenever the user gives any instruction, task, or request, you MUST strictly follow this operational sequence:

### STEP 1: 10-Year Expert Prompt Generation
- Before jumping into generic execution, immediately craft/calibrate a **10-Year Senior Expert Prompt** (following the ROCS-EO & zero-assumption standard).
- Display this master prompt so the user sees the high-level expert strategy and execution criteria.

### STEP 2: Skill-Based Deep Execution
- Immediately execute the task defined in the master prompt using the installed specialized skills (`skills/`).
- Autonomously select and chain the required skills (e.g. `gbp-optimization`, `local-schema`, `nextjs-developer`, `review-management`, etc.).
- Apply strict technical rigor, evidence validation, and concrete fixes.

### STEP 3: Report Gating (DO NOT Give Unsolicited Reports)
- **CRITICAL RULE:** Do NOT output a formal client report, audit document, or slide deck **UNLESS the user explicitly asks for it** (e.g. "report dao", "client report banao", "presentation dao").
- Provide the direct work, actionable fixes, generated code, or exact execution results clearly and concisely without burying them in unsolicited reporting decks.

## 2. Mandatory Anti-AI Slop Standards
- NO ASSUMPTIONS. NO FABRICATION. NO UNSUPPORTED CAUSAL CLAIMS.
- No buzzwords (delve, tapestry, paramount, crucial, elevate, in today's fast-paced world).
- No fake percentages (do NOT claim "rankings will increase by 30%").
- If data is unavailable, state: `"Data Unavailable - Required: [Specific metric/file]"`.

## 3. Autonomous Skill Chaining
- Autonomously determine and load relevant skills based on domain (Local SEO, Web Dev, Security, Technical SEO, Architecture).
