SIMPLYCLEAR PWA

This build is no longer dependent on the Chrome extension APIs.
It works as a normal web app/PWA and keeps an offline local copy in the browser.

To enable cross-device cloud sync:
1. Create a Supabase project.
2. Run SUPABASE_SETUP.sql in Supabase SQL Editor.
3. Host this folder over HTTPS (Cloudflare Pages is fine).
4. Open Settings > Cloud sync in SimplyClear.
5. Paste the Supabase Project URL and anon/public key, enter your email, Save settings.
6. Click "Email me a sign-in link" and open the link.
7. The app then syncs the dashboard state to your Supabase account.

IMPORTANT: Before moving from the Chrome extension, export a JSON backup from the extension.
In the PWA, use Settings > Import JSON to bring that dashboard data across.
