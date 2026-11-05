# Dish Diary

A food diary with weekly markets, weather-based food ideas, app lock (PIN + device biometrics) and Supabase accounts.

## 1. Supabase (once)
1. Create a project at supabase.com.
2. SQL Editor > New query > paste `schema.sql` > Run.
3. Project Settings > API: copy the Project URL and the `anon` public key into `config.js`.
4. Authentication > URL Configuration: set Site URL to your live address (step 3 below) and add it under Redirect URLs.
5. Optional: Authentication > Providers > Email > turn off "Confirm email" if you want instant sign-up.

## 2. GitHub
1. Create a new repository (for example `dish-diary`).
2. Upload every file in this folder (Add file > Upload files), then commit.

## 3. Go live (GitHub Pages)
1. Repository Settings > Pages.
2. Source: Deploy from a branch, Branch: `main`, folder `/ (root)`, Save.
3. After a minute your site is at `https://YOUR-USERNAME.github.io/dish-diary/`.

Fingerprint / face unlock needs HTTPS and a device with biometrics set up, which GitHub Pages provides.
The Foodie chatbot and AI picture maker only work inside Claude, so they show as unavailable here.

## 4. Use it as an app

### Install from the website (no store needed)
- **Android (Chrome):** open your live address, tap **Install app** in the top banner (or the browser menu > Install app).
- **iPhone (Safari):** tap Share > **Add to Home Screen**.
- **Windows / Mac (Chrome or Edge):** click the install icon in the address bar.
It then opens full screen with its own icon and keeps working with a weak connection.

### Get an Android APK file
1. Push this folder to GitHub. The workflow in `.github/workflows/android.yml` builds an APK automatically.
2. Repository > **Actions** > **Build Android APK** > open the latest run > download **dish-diary-apk**.
3. Unzip it and install `app-debug.apk` on your phone (allow "install unknown apps").
This is a test build. Publishing to Google Play needs a signed release build and a Play developer account. An iPhone app needs a Mac and an Apple developer account.
