---
name: plain-technical-writing
description: Write or edit anything an engineer, a reviewer or another agent reads — PR descriptions, commit messages, issues, plans, questions for a reviewer, status updates and reports, READMEs, AGENTS.md files, code comments and review replies. Use whenever you write prose for a teammate rather than for a product user. For text a person reads in the product, use product-copy instead.
---

# Plain technical writing

Write for a busy reader who has to decide or act. For text a person reads in the product, use `product-copy`.

## Answer first, then detail

- Open with the answer: what changed, what you found, or what you need. The first line stands on its own.
- Then give what the reader needs to check it: the cause, the evidence, the trade-off.
- Reasoning, trade-offs and risks belong here. Say what you chose, what you passed over and why, what could break and how to roll it back.

**Before:** "I looked into the failing test. After reading through the validation and the API contract, it turns out the validation itself is actually fine, so I went ahead and…"

**After:** "The validation is right; the test was wrong. It sent a line the server adds itself, and the API takes the other lines only. The fix sends only those. 26 of 26 tests pass."

## Be specific

- IDs and links help: the issue key, `#1234`, commit `1a2b3c4`, `path/to/file.ts:42`. Code comments follow the repo's rule instead.
- Give numbers and evidence, not adjectives: "26 of 26 pass", not "tests look good".
- Say what you didn't verify, and why.

## Fit the format

- Use the format you're given (a template, a commit convention) and fill it in; don't add sections of your own.
- Size the text to the decision. A status update or a question fits in 3–6 lines. Longer documents still open each section with its point.
- A title or subject line says what changes, in the imperative: "Retry failed uploads", not "Fixed a bug".
- Ask related questions together, each with your recommended answer first. Don't repeat options the reader already sees.
  - ✗ "I have a question. Option 1 is … option 2 is … Which do you prefer? Option 1: … Option 2: …"
  - ✓ "Two settings have no owner. I left them in place; the other choice is to move them."

## Write plainly

- Second person, active voice, present tense. Name the actor: "The scheduler retries the job", not "The job is retried".
- Name people by name or role ("the reviewer", "the customer", "the on-call engineer"), never by a pronoun: not "he", "she" or "they". Repeat the role instead.
- Sentence case headings. Code font for code, paths and commands. Unambiguous dates: `2026-11-10` or "10 Nov 2026".
- Cut:
  - announcements ("a few things worth flagging", "to be clear");
  - antithesis ("this isn't X, it's Y");
  - office idioms (circle back, surface, land, unpack);
  - hand-waves (boils down to, falls out);
  - hedges ("it's worth noting", "I would argue");
  - praise openers ("Great question");
  - empty intensifiers (simply, just, obviously, easy).
- When the repo has a style guide, it wins. Otherwise, fall back to the [Google developer documentation style guide](https://developers.google.com/style); its [highlights page](https://developers.google.com/style/highlights) covers most questions in one read.

## Check it

Read the first line on its own. If the reader can't act on it, rewrite it. Then check that every "works" has evidence.
