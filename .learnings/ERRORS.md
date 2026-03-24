## [ERR-20260323-001] git-commit

**Logged**: 2026-03-23T21:22:00+08:00
**Priority**: medium
**Status**: pending
**Area**: config

### Summary
Git commit failed because repository user identity was not configured.

### Error
```
Author identity unknown

fatal: unable to auto-detect email address
```

### Context
- Command attempted: git commit -m "Install nano-banana-pro skill"
- Repository: /home/admin/.openclaw/workspace
- Cause: missing git user.name and user.email

### Suggested Fix
Configure repository-local git user.name and user.email before committing.

### Metadata
- Reproducible: yes
- Related Files: .git/config

---
## [ERR-20260323-002] git-add-pathspec

**Logged**: 2026-03-23T21:23:00+08:00
**Priority**: low
**Status**: pending
**Area**: config

### Summary
Tried to add .clawhub-lock.json, but that file was not present in the workspace.

### Error
```
fatal: pathspec '.clawhub-lock.json' did not match any files
```

### Context
- Command attempted: git add skills/nano-banana-pro .clawhub-lock.json .learnings/ERRORS.md
- Repository: /home/admin/.openclaw/workspace

### Suggested Fix
Check git status first and only add files that actually exist.

### Metadata
- Reproducible: yes
- Related Files: .learnings/ERRORS.md

---
## [ERR-20260324-001] clawhub-install-slug-format

**Logged**: 2026-03-24T08:33:00+08:00
**Priority**: medium
**Status**: pending
**Area**: config

### Summary
`clawhub install steipete/mcporter` failed because the CLI rejected owner/name format as an invalid slug.

### Error
```
Error: Invalid slug: steipete/mcporter
```

### Context
- Command attempted: `clawhub install steipete/mcporter --workdir /home/admin/.openclaw/workspace`
- User wanted to install the skill from https://clawhub.ai/steipete/mcporter
- ClawHub CLI appears to expect the plain slug (`mcporter`) rather than `owner/slug`

### Suggested Fix
Try `clawhub install mcporter` and confirm installed files locally before reporting success.

### Metadata
- Reproducible: yes
- Related Files: .learnings/ERRORS.md

---
