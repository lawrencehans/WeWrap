# WeWrap beta 0.5

## Using this version

1. Install the new preview APK after building it through your existing Expo project. The source ZIP itself is not an installable app.
2. Choose **Continue with device beta** while the hosted account service is not configured.
3. Open **Pages → Company Setup**. Enter your company name, contacts, address, registration and tax numbers, payment details and terms. Upload a small PNG/JPEG logo. Enter the appropriate tax rate; the default is zero.
4. Save a customer quote, then choose **Create PDF invoice**. Open **Pages → Invoices → Send PDF invoice**, then choose WhatsApp, email or another sharing app. Review the recipient yourself.

Invoices freeze the company details, customer, quote price, currency and tax calculation when issued. Repeated creation from the same quote opens its existing invoice. Documents use a local sequence; shared server-side numbering, invoice editing/credit notes and payment tracking are not yet implemented. Two devices can generate the same number, so use one device for issuing beta invoices.

## Updating your existing project

Extract this source ZIP into your existing project folder. Keep its `.git` folder, private `.env` files, and existing `app.json` `extra.eas.projectId`; merge the new app settings rather than deleting that project ID. Do not upload `.env` or `node_modules` to GitHub.

Install dependencies with `npm install`, then build the Android private beta with `npx eas-cli build --platform android --profile preview`. Install that new APK on the phone. Existing device-beta records use the same storage key as version 0.4. Export a private backup before installing/testing any update.

## Account configuration

The Sign in/Create account screens call Supabase Auth over HTTPS. They are not connected to a live Supabase project yet. Configure only a public publishable/anon key and project URL in the Expo `.env` file using `.env.example`. For the browser, edit `src/auth-config.js`. Never include a service-role key. Enable email confirmation and configure email delivery in Supabase before inviting clients. Registration sends a confirmation email if configured; the user then signs in normally. Sessions are memory-only and users sign in again after restarting.

Authenticated local workspaces are separated by the provider's user ID. Device beta retains the previous device workspace. Company profiles and business records currently stay on the device; signing in does not sync them to another phone. The app does not store passwords or authentication tokens in backups. This local beta is not access control for a shared/public computer. Before a public release, add server-side company membership, database row-level policies, cloud storage rules, recovery flows, synchronization and per-user rendering authorization.

Supabase references: https://supabase.com/docs/guides/auth/passwords

## HEXIS wrapping library

199 official references imported from HEXIS Export Catalogue 2026: 134 HX20000, 55 HX30000 including chrome/satin chrome/structured finishes, and 10 HXONE. Source PDF pages 24, 33 and 35. References flagged with an asterisk are listed as "while stocks last" in the source. The four previous demo materials remain for existing records and have illustrative prices. This is the vehicle-wrap catalogue, not every HEXIS product for signage, windows or printing.

Names, codes and range membership come from the catalogue. Display colours are approximate RGB sampled from the rendered catalogue swatches, which contain highlights/textures; they are not calibrated manufacturer colour values. Check a physical swatch and availability with your local supplier. HEXIS material prices are intentionally blank; selecting a HEXIS entry preserves the current calculator price until you enter the supplier's actual price.

Official catalogue: https://data.hexis-graphics.com/docs/u/documents/catalogue/CATALOGUE_HEXIS_EXPORT_EN__ISSUU_2026.pdf

Official product index: https://www.hexis-graphics.com/en/products/wrap-vinyl/

## Verification and remaining work

Calculator, invoice snapshot/tax/escaping, account requests and existing rendering tests pass. Browser PDF generation is checked separately with the actual jsPDF exporter. Android JavaScript export succeeds using `--no-bytecode`; a complete EAS APK and physical-device sharing/authentication tests have not been run here. Hosted account service and AI rendering provider have not been tested live because their configuration is missing. The existing backend still needs its server-side API key and HTTPS hosting for phone rendering. SDK dependency advisories and private-beta release checks from earlier versions still need review before final release.
