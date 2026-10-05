# WeWrap design and rendering — 0.4 candidate

Uses the user's 5 October references: white/hot-pink brush wordmark, black interface, magenta primary actions, cyan accents, graffiti automotive imagery, colourful dashboard counters and Design/Calculate/Quote/Wrap icons.

Generated assets use the built-in image-generation tool. Final prompt summaries:
- `assets/wewrap-logo.png`: reference WeWRAP brush wordmark; white We, pink WRAP, white BUSINESS SOLUTION, transparent, no car or background.
- `assets/wewrap-app-icon.png`: reference-inspired square black app icon; wrapped sports car, cyan/pink paint splashes, brush wordmark, safe inset.
- `assets/navigation-icons.png`: reference-inspired 2×2 illustrated icon sprite; palette/brush, calculator, quote document, wrapped front-view car.
- `assets/graffiti-hero.png`: photoreal Golf, hot pink/cyan/orange graffiti wrap, industrial garage.
- `assets/ocean-render.png`: edit the same car to solid ocean-blue satin; preserve geometry, camera, wheels, windows and background.

Sample cars are labelled examples, not renderings of a user's upload. Only the Ocean satin entry has a supplied solid-colour sample. Real user-photo rendering follows upload → select material/finish/design/coverage → Generate → compare original/generated. Colour or photo changes invalidate older generated results. Saved customer quote uses the current generated image when present. Partial wrap currently targets bonnet and roof. AI imagery remains an approximation and needs inspection, especially panel boundaries and exact colour matching.

Backend requirements: Node service in `backend/`, OpenAI key stored in server environment, beta invitation code, HTTPS hosting. See backend/README.md. No API key exists in this app, no hosted rendering endpoint is configured, and no live provider request was made. Expo distributes the mobile app; it does not host this Node backend.

Verified: rendering request/prompt/error tests with mocked provider and calculator tests. Android JavaScript export is a debug bundling check. A full native build and actual-device testing remain pending.
