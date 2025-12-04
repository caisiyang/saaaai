# Personal Link-in-Bio Dashboard

A minimalist, single-file personal dashboard with an iOS-inspired design. It features a "Serverless" architecture using GitHub Gist for data storage and synchronization.

## Features

- **Single File**: No build process, just one `index.html`.
- **Cloud Sync**: Data is stored in a GitHub Gist (`data.json`), allowing you to update your dashboard from anywhere.
- **iOS Aesthetic**: Clean, dark-mode-first design with a light mode toggle.
- **Secret Admin Mode**: No visible login button. Tap the bottom of the screen 5 times to enter admin mode.
- **Drag & Drop**: Easily rearrange your widgets in Admin mode.
- **Responsive**: Optimized for mobile and desktop (fixed 600px container).

## Setup

1.  **Create a GitHub Gist**:
    *   Go to [gist.github.com](https://gist.github.com).
    *   Create a new Gist with a file named `data.json`.
    *   Add some initial JSON content (e.g., `{}`).
    *   Save the Gist and copy the **Gist ID** from the URL.

2.  **Configure the App**:
    *   Open `index.html` in a text editor.
    *   Find `const GIST_ID = '...'` and replace it with your Gist ID.
    *   (Optional) Update `const GIST_FILENAME` if you used a different filename.

3.  **Get a GitHub Token**:
    *   Go to GitHub Settings -> Developer settings -> Personal access tokens.
    *   Generate a new token with `gist` scope (to allow writing to Gists).
    *   Keep this token safe. You will need it to enter Admin mode.

## Usage

### Viewing
*   Open `index.html` in any browser.
*   The dashboard loads your profile and links from the Gist.

### Editing (Admin Mode)
1.  **Enter Admin Mode**: Tap or click the empty area at the very bottom of the page (bottom 10%) **5 times quickly**.
2.  **Authenticate**: Enter your GitHub Personal Access Token when prompted.
3.  **Edit**:
    *   **Add Widgets**: Click on any empty slot (marked with `+`).
    *   **Edit Widgets**: Click the pencil icon on existing widgets.
    *   **Move Widgets**: Drag and drop widgets to rearrange them.
    *   **Edit Profile**: Click on your avatar or name to edit profile details.
4.  **Save**: Changes are automatically saved to your Gist when you finish editing a card or profile.

## Tech Stack

*   **HTML5 / CSS3**: Vanilla web technologies.
*   **JavaScript (ES6+)**: No frameworks.
*   **FontAwesome**: For icons.
*   **GitHub Gist API**: For data persistence.

## License

MIT
