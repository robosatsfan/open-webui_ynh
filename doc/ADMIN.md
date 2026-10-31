You can start using open webui with ollama (after installing it from yunohost catalog) immediately.
Here is the guide to manage ollama from open webui : https://docs.openwebui.com/getting-started/quick-start/starting-with-ollama/

## Sign-in with YunoHost

Users who are logged in to YunoHost are signed in to Open WebUI automatically. The Open WebUI login form is no longer shown.

This has the following requirements and effects:

- **Requirements:** YunoHost 12.1.15 or later and SSOwat 12.1.1 or later. Install, upgrade and restore stop with an error if SSOwat is older.
- **Email address:** Accounts are matched by the main email address of the YunoHost user. Changing that address creates a new, empty Open WebUI account.
- **Public access:** Do not add `visitors` to the main permission of this app. Visitors have no YunoHost session, so they cannot sign in.
- **API clients:** Requests without a YunoHost session are redirected to the portal.
- **Sign out:** Sign Out in Open WebUI opens the YunoHost portal. To end the session completely, log out of the portal as well.
- **Display name:** New accounts use the YunoHost username as their name. Users can change it in the Open WebUI settings.
- **Local access:** The app listens on `127.0.0.1` only, so it can be reached only through nginx. Any local process that can reach its port can sign in as any user.
