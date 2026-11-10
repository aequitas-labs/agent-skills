# agent-skills

Shared skills for every repo and every agent, Claude Code and Codex:

- [`product-copy`](skills/product-copy/SKILL.md): any text a person reads in the product.
- [`plain-technical-writing`](skills/plain-technical-writing/SKILL.md): anything an engineer, a reviewer or another agent reads.

The repo is a Claude Code plugin marketplace (`aequitas-labs`) with one plugin (`agent-skills`) that holds every skill in `skills/`.

## Turn it on in a repo

### Claude Code

Add the marketplace and enable the plugin in the repo's checked-in `.claude/settings.json`, merged with what's there:

```json
{
  "extraKnownMarketplaces": {
    "aequitas-labs": {
      "source": { "source": "github", "repo": "aequitas-labs/agent-skills" }
    }
  },
  "enabledPlugins": {
    "agent-skills@aequitas-labs": true
  }
}
```

To install it for yourself only, in any folder, run `/plugin install agent-skills --marketplace aequitas-labs/agent-skills`.

When you trust a repo's folder, Claude Code offers to install the marketplace and the plugin. If it doesn't, run `/plugin` and install `agent-skills` from `aequitas-labs`, or `claude plugin install agent-skills@aequitas-labs --scope local`. Don't use `--scope project`: it rewrites the checked-in `.claude/settings.json` and can drop keys. The skills then show as `agent-skills:product-copy` and `agent-skills:plain-technical-writing`.

Then point the repo's `AGENTS.md` at the skills:

```markdown
- Product copy (anything a person reads in the product) follows the `product-copy` skill.
- Writing for engineers (PRs, commits, issues, plans, reports, docs) follows the `plain-technical-writing` skill.
```

### Codex

Codex loads skills from `~/.codex/skills` (or `$CODEX_HOME/skills`). Install them once per machine:

```bash
git clone https://github.com/aequitas-labs/agent-skills ~/.agent-skills && ~/.agent-skills/install-codex.sh
```

The script links each skill folder into Codex's skills folder, so `git -C ~/.agent-skills pull` updates them. It skips a skill whose name is already taken by a folder it didn't link.

## Add a skill

1. Add `skills/<name>/SKILL.md` with `name` and `description` frontmatter. The description says what the skill covers and when to load it.
2. Keep it short enough to read in two minutes, with examples over rules. Keep it generic: no product, tool or person names.
3. Bump `version` in `.claude-plugin/plugin.json`, so Claude Code picks up the change.
4. Open a PR. After it merges, Codex users run `install-codex.sh` again to link the new skill.
