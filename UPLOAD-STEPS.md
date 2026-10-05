# GitHub and Expo upload status

Prepared: native mobile project for @labdevcpt24, Android internal APK profile, source commit, lockfile and ignored secrets/backups. Not uploaded yet: GitHub browser sign-in is pending; Expo linking/building is blocked by this session's subprocess restriction.

## GitHub

Create a private repository named `wewrap-business-solution` under `lawrencehans`, without initial README/license/gitignore (this project contains those already). From this folder:

```
git remote add origin https://github.com/lawrencehans/wewrap-business-solution.git
git push -u origin main
```

Sign in through Git's normal browser prompt. Do not put passwords or tokens in the repository or chat. When uploading a ZIP manually, extract and upload its files at the repository root, not the ZIP itself.

## Expo Android beta

From the same project folder in your own terminal:

```
npm ci
npx eas-cli login
npx eas-cli init --account labdevcpt24
npx eas-cli build --platform android --profile preview
```

Confirm the owner and new project name. EAS will add a real project ID to app.json. Commit that updated configuration. Review and accept signing-key setup in your own terminal when prompted. No APK or build URL is available until the cloud build finishes successfully. Build quotas or charges depend on your Expo account plan.

Set project visibility and authenticated installer download restrictions in Expo before sharing with testers; internal distribution links alone may be accessible to anyone with the link. The owner selected beta testing first; do not submit to stores yet.

## Verification

Passed: mobile source syntax, Android JavaScript export (no-bytecode debug check), six calculator tests. Not verified: full Hermes/APK compilation, installation, native camera/photo permissions, phone backup restore and end-to-end device workflow.

The official SDK 57 dependency tree reports unresolved npm advisories involving braces, node-forge and uuid and their dependents. The audit reports no automatic safe fix. Review upstream patches before final release; no forced major upgrades were applied.
