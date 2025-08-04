<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Telegram Proxy Scraper Bot README</title>
    <style>
        /* General Body Styles */
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
            line-height: 1.6;
            color: #24292e;
            background-color: #ffffff;
            margin: 0;
            padding: 0;
        }

        /* Main Container */
        .container {
            max-width: 900px;
            margin: 40px auto;
            padding: 20px 30px;
            border: 1px solid #e1e4e8;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        }

        /* Headings */
        h1, h2, h3 {
            border-bottom: 1px solid #eaecef;
            padding-bottom: 0.4em;
            font-weight: 600;
        }

        h1 {
            font-size: 2.2em;
            text-align: center;
            border-bottom: none;
        }

        h2 {
            font-size: 1.7em;
            margin-top: 40px;
        }

        h3 {
            font-size: 1.3em;
            margin-top: 30px;
        }

        /* Links */
        a {
            color: #0366d6;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Images & Banners */
        img {
            max-width: 100%;
            height: auto;
            border-radius: 6px;
        }

        .center-align {
            text-align: center;
            margin: 20px 0;
        }

        /* Badges */
        .badges-container img {
            margin: 0 5px;
        }

        /* Code Blocks & Inline Code */
        code {
            font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, Courier, monospace;
            font-size: 0.9em;
            background-color: rgba(27,31,35,0.05);
            padding: 0.2em 0.4em;
            border-radius: 3px;
        }

        pre {
            padding: 16px;
            overflow: auto;
            font-size: 85%;
            line-height: 1.45;
            background-color: #f6f8fa;
            border-radius: 6px;
            border: 1px solid #e1e4e8;
        }

        pre code {
            display: inline;
            padding: 0;
            margin: 0;
            overflow: visible;
            line-height: inherit;
            word-wrap: normal;
            background-color: transparent;
            border: 0;
        }

        /* Lists */
        ul, ol {
            padding-left: 2em;
        }

        li {
            margin-bottom: 0.5em;
        }

        /* Horizontal Rule */
        hr {
            height: .25em;
            padding: 0;
            margin: 24px 0;
            background-color: #e1e4e8;
            border: 0;
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Telegram Proxy Scraper Bot</h1>

    <div class="center-align">
        <img src="https://i.imgur.com/8a6F2aT.png" alt="Bot Banner" width="700"/>
    </div>

    <div class="center-align badges-container">
        <a href="https://www.python.org/" target="_blank">
            <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python">
        </a>
        <a href="https://www.docker.com/" target="_blank">
            <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
        </a>
        <a href="https://www.selenium.dev/" target="_blank">
            <img src="https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=selenium&logoColor=white" alt="Selenium">
        </a>
        <a href="https://telegram.org/" target="_blank">
            <img src="https://img.shields.io/badge/Telegram-26A5E4?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram">
        </a>
        <a href="#" target="_blank">
            <img src="https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge" alt="License">
        </a>
    </div>

    <p>A sophisticated, containerized Telegram bot that scrapes free proxy details from <a href="https://onlineproxy.io">onlineproxy.io</a>. This tool is designed for users who need quick access to fresh proxies from various countries directly within their Telegram messenger, with easy deployment thanks to Docker.</p>

    <h2>🌟 Features</h2>
    <ul>
        <li><strong>Dynamic Web Scraping</strong>: Utilizes Selenium to navigate a JavaScript-heavy website, demonstrating advanced scraping techniques.</li>
        <li><strong>Interactive Telegram Bot</strong>: A user-friendly bot interface built with the <code>python-telegram-bot</code> library.</li>
        <li><strong>Multi-Country Support</strong>: Easily fetch proxies from a predefined list of countries.</li>
        <li><strong>Containerized Deployment</strong>: Comes with a <code>Dockerfile</code> for easy, consistent, and isolated deployment.</li>
        <li><strong>Secure Configuration</strong>: Employs environment variables for API tokens, keeping your credentials safe.</li>
        <li><strong>Robust Error Handling</strong>: Gracefully manages web scraping timeouts and bot command issues.</li>
        <li><strong>Asynchronous Operations</strong>: Leverages <code>asyncio</code> for non-blocking execution, ensuring a responsive bot.</li>
    </ul>

    <h2>🚀 Getting Started</h2>
    <p>You can run this bot either locally with a Python environment or using Docker. The Docker method is recommended for ease of use and consistency.</p>
    
    <h3>Prerequisites</h3>
    <ul>
        <li><strong>For Docker Deployment</strong>: <a href="https://www.docker.com/get-started">Docker</a> installed on your system.</li>
        <li><strong>For Local Development</strong>:
            <ul>
                <li>Python 3.9+</li>
                <li>Google Chrome browser</li>
                <li><code>pip</code> for package management</li>
            </ul>
        </li>
    </ul>

    <h2>🐳 Docker Deployment (Recommended)</h2>
    <p>Containerizing the bot simplifies dependency management and provides a stable environment.</p>
    <ol>
        <li><strong>Clone the Repository:</strong>
            <pre><code>git clone https://github.com/your_username/your_repository.git
cd your_repository</code></pre>
        </li>
        <li><strong>Build the Docker Image:</strong>
            <p>This command builds the image using the provided <code>Dockerfile</code>. It will install all necessary system and Python dependencies.</p>
            <pre><code>docker build -t proxy-scraper-bot .</code></pre>
        </li>
        <li><strong>Run the Docker Container:</strong>
            <p>You must provide your Telegram Bot Token as an environment variable (<code>-e</code>) when running the container.</p>
            <pre><code>docker run -d --name proxy-bot-instance -e TELEGRAM_BOT_TOKEN="YOUR_TELEGRAM_BOT_TOKEN" proxy-scraper-bot</code></pre>
            <ul>
                <li><code>-d</code>: Runs the container in detached mode (in the background).</li>
                <li><code>--name proxy-bot-instance</code>: Assigns a memorable name to your container.</li>
            </ul>
            <p>Your bot is now running inside a Docker container!</p>
        </li>
    </ol>

    <h3>Managing the Docker Container</h3>
    <ul>
        <li><strong>View Logs:</strong>
            <pre><code>docker logs -f proxy-bot-instance</code></pre>
        </li>
        <li><strong>Stop the Container:</strong>
            <pre><code>docker stop proxy-bot-instance</code></pre>
        </li>
        <li><strong>Restart the Container:</strong>
            <pre><code>docker start proxy-bot-instance</code></pre>
        </li>
    </ul>

    <hr>

    <h2>💻 Local Development Setup</h2>
    <p>If you prefer to run the bot directly on your machine, follow these steps.</p>
    <ol>
        <li><strong>Clone the repository:</strong>
            <pre><code>git clone https://github.com/your_username/your_repository.git
cd your_repository</code></pre>
        </li>
        <li><strong>Create a virtual environment:</strong>
            <pre><code>python -m venv venv
source venv/bin/activate  # On Windows, use `venv\Scripts\activate`</code></pre>
        </li>
        <li><strong>Install the required dependencies:</strong>
            <p>The <code>requirements.txt</code> file contains all the necessary Python packages.</p>
            <pre><code>pip install -r requirements.txt</code></pre>
        </li>
        <li><strong>Set up your Telegram Bot Token:</strong>
            <p>Talk to the <a href="https://t.me/botfather">BotFather</a> on Telegram to create a new bot and get your API token. Then, set it as an environment variable.</p>
            <p><em>On Linux/macOS:</em></p>
            <pre><code>export TELEGRAM_BOT_TOKEN="YOUR_TELEGRAM_BOT_TOKEN"</code></pre>
            <p><em>On Windows:</em></p>
            <pre><code>set TELEGRAM_BOT_TOKEN="YOUR_TELEGRAM_BOT_TOKEN"</code></pre>
        </li>
        <li><strong>Run the Bot:</strong>
            <pre><code>python bot.py</code></pre>
        </li>
    </ol>

    <h2>🤖 How to Use the Bot</h2>
    <p>Interact with the bot on Telegram using the following commands:</p>
    <ul>
        <li><code>/start</code> - Displays a welcome message and the list of available countries.</li>
        <li><code>/help</code> - Provides instructions on how to use the <code>/proxy</code> command.</li>
        <li><code>/proxy <country_name></code> - Scrapes and returns up to four proxies for the specified country.</li>
    </ul>
    <p><strong>Example:</strong> <code>/proxy united-states</code></p>
    
    <h2>🛠️ How It Works</h2>
    <h3>Telegram Bot</h3>
    <p>The bot is built using the <code>python-telegram-bot</code> library. It listens for commands from users and triggers the appropriate actions. It uses <code>asyncio</code> to handle multiple user requests concurrently without blocking.</p>
    <h3>Web Scraper</h3>
    <p>The web scraper is built with Selenium. When a user requests proxies, the scraper:</p>
    <ol>
        <li>Launches a headless Chromium browser inside the container.</li>
        <li>Navigates to the corresponding URL on <code>onlineproxy.io</code>.</li>
        <li>Locates the active proxy listings and avoids archived ones.</li>
        <li>Iteratively clicks on each proxy to open a details modal.</li>
        <li>Interacts with the modal to reveal the full proxy credentials.</li>
        <li>Extracts the protocol, IP, port, login, and password.</li>
        <li>Returns the scraped data to the bot, which then formats and sends it to the user.</li>
    </ol>

    <h2>📂 Project Structure</h2>
    <pre><code>your_repository/
│
├── Dockerfile              # Instructions for building the Docker image
├── bot.py                  # Main Python script for the bot and scraper
├── requirements.txt        # List of Python dependencies
└── README.md               # This file
</code></pre>

    <h2>🤝 Contributing</h2>
    <p>Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are <strong>greatly appreciated</strong>.</p>
    <p>If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".</p>
    <ol>
        <li>Fork the Project</li>
        <li>Create your Feature Branch (<code>git checkout -b feature/AmazingFeature</code>)</li>
        <li>Commit your Changes (<code>git commit -m 'Add some AmazingFeature'</code>)</li>
        <li>Push to the Branch (<code>git push origin feature/AmazingFeature</code>)</li>
        <li>Open a Pull Request</li>
    </ol>

    <h2>📜 License</h2>
    <p>Distributed under the MIT License. See <code>LICENSE</code> for more information.</p>

</div>

</body>
</html>
