# Automation of Release Notes

## Overview
The goal of automating release notes is to reduce manual effort and minimize the risk of missing critical information.

## Process Breakdown

### 1. Branch Naming Convention
Follow a specific naming convention when creating branches to keep code organized. Valid branch types include:
- `feature*`: New features
- `fix*`: Bug fixes
- `hotfix*`: Urgent changes
- `prerelease*`: Pre-release versions
- `release*`: Final versions

**Examples:**
- `feature/hub-improvement`
- `fix/law-login`
- `prerelease-0.17`
- `feature-law-login`

### 2. Labeling Pull Requests
Once the branch is named correctly, use GitHub Actions to automatically label each pull request (PR) by creating an `auto-label.yml` workflow.

### 3. Generating Release Notes
When a PR is merged into the main branch and a new tag is pushed, GitHub Actions will automatically generate release notes. This involves two key steps:
- **Step 3.1:** When Buildkite triggers a release to production, add a step in the `release.sh` script to create and push the tag.
- **Step 3.2:** The `create-release.yml` workflow defines how release notes are generated, while `release.yml` serves as the template.

## Conclusion
By following this automated process, we ensure that our release notes are consistent, accurate, and efficiently generated.

## TODO