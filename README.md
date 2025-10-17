# .github

Organization-level repository providing community health files and starter workflow templates for all `kyhau` repositories.

## What Gets Applied to New Repositories

When you create a new GitHub repository in the `kyhau` organization, here's what happens with files from this `.github` repository:

### 🎯 Automatically Applied (Community Health Files)

These files **automatically apply** to any repository that doesn't have its own version:

- ✅ `CODE_OF_CONDUCT.md` - Code of conduct
- ✅ `CONTRIBUTING.md` - Contribution guidelines
- ✅ `SECURITY.md` - Security policy and vulnerability reporting
- ✅ `.github/pull_request_template.md` - PR template
- ✅ `.github/ISSUE_TEMPLATE/` - Bug report and feature request forms

These appear in the new repository automatically without any configuration needed.

### 📋 Available in GitHub UI (Starter Templates)

These appear as **quick-start options** when creating a new GitHub Actions workflow:

- 📦 `workflow-templates/python-ci-template.yml` - Python CI workflow
- 📦 `workflow-templates/codeql-template.yml` - CodeQL security analysis
- 📦 `workflow-templates/secrets-scan-template.yml` - Secrets scanning
- 📦 `workflow-templates/stale-issues-template.yml` - Stale issue management
- 📦 `workflow-templates/dependabot-auto-approve-merge-template.yml` - Dependabot automation
- 📦 `workflow-templates/dependabot-template.yml` - Dependabot configuration

When you go to "Actions" → "New workflow" in a repository, these templates show up as suggested workflows.

### ❌ NOT Automatically Applied

- `.github/workflows/` - Workflows for this repository only (not reusable)
- `README.md` - Documentation for this repository only

---

## Using Starter Workflows

When creating a new workflow in your repository:

1. Go to **Actions** → **New workflow**
2. Look for the starter workflows from this organization
3. Click **Configure** on the desired template
4. Customize as needed for your project

See `workflow-templates/` for all available starter workflows.

## References

- [Creating starter workflows for your organization](https://docs.github.com/en/actions/using-workflows/creating-starter-workflows-for-your-organization)
- [Creating a default community health file](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file)
