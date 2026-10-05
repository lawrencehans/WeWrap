Current beta: **0.5**. See [VERSION-0.5.md](VERSION-0.5.md) for company setup, PDF invoices, sign-in configuration and the 2026 HEXIS library.

# WeWrap Expo mobile beta — design candidate 0.4

Native Expo / React Native adaptation of WeWrap. Local phone storage; no website required. Customers, camera/photo picker, AI rendering request and original/generated comparison, sample vinyl library, panel estimator, locked quote currency/rates, quote sharing, jobs, manual stock, quote projections, settings, feedback and mobile JSON backup/restore.

The flat concept tint has been replaced with original/generated image comparison and an authenticated backend rendering request. Reference-inspired brush logo, app icon and four illustrated workflow icons are integrated. See DESIGN-AND-RENDERING.md. The server requires secure API-key setup and HTTPS deployment for phone use. Real uploaded-car rendering is not yet live-verified; only sample renders and mocked integration tests are complete.

Install `npm ci`, run `npx expo start` and use a compatible Expo Go. For Android beta: `npx eas-cli login`, `npx eas-cli init`, `npx eas-cli build --platform android --profile preview`. Account: `labdevcpt24`. Keep the project private in Expo settings. No store submission is configured. Device tests and a successful EAS build remain required.

Private source does not make installer links private. Configure Expo authenticated download access before sharing a beta. Internal Android builds produce APKs. No login, cloud sync, tax or automatic stock deduction. Real AI rendering requires configuring the supplied backend. Prices, colours, panel sizes and rates are illustrative. Independent cuts rotate by 90 degrees, without nesting or seams. Generated images require visual inspection.

Mobile backups embed photos and contain customer information. Browser MVP backups are incompatible with the mobile schema. Do not commit backups, secrets or credentials to GitHub.
