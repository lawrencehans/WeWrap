# WeWrap Expo mobile beta

Native Expo / React Native adaptation of WeWrap. Local phone storage; no website required. Customers, camera/photo picker, concept tint, sample vinyl library, panel estimator, locked quote currency/rates, quote sharing, jobs, manual stock, quote projections, settings, feedback and mobile JSON backup/restore.

Install `npm ci`, run `npx expo start` and use a compatible Expo Go. For Android beta: `npx eas-cli login`, `npx eas-cli init`, `npx eas-cli build --platform android --profile preview`. Account: `labdevcpt24`. Keep the project private in Expo settings. No store submission is configured. Device tests and a successful EAS build remain required.

Private source does not make installer links private. Configure Expo authenticated download access before sharing a beta. Internal Android builds produce APKs. No backend/login/cloud sync/real AI/tax/automatic stock deduction. Prices, colours, panel sizes and rates are illustrative. Independent cuts rotate by 90 degrees, without nesting or seams. Photo tint affects the whole image.

Mobile backups embed photos and contain customer information. Browser MVP backups are incompatible with the mobile schema. Do not commit backups, secrets or credentials to GitHub.
