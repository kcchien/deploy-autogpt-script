# Auto-GPT Program Automatic Installation script for macOS

This Bash shell script helps you to automatically install the Auto-GPT program on your macOS system. Auto-GPT is an automated text generation program based on GPT-3 that can generate various types of text, such as news reports, literary works, product descriptions, and more.

## Requirements

---

- macOS system.
- Python 3.8 or higher.
- OpenAI API key, which can be applied for on the [OpenAI website](https://platform.openai.com/account/api-keys).
- Internet connection.

## Installation

---

1. Go to the ~/Downloads folder.

   ```bash=
   cd ~/Downloads
   ```

2. Download the install-autogpt.sh file from GitHub.

   ```bash=
   curl -O https://raw.githubusercontent.com/kcchien/deploy-autogpt-script/master/install-autogpt.sh
   ```

   Alternatively, you can use the wget command to download the file:

   ```bash=
   wget https://raw.githubusercontent.com/kcchien/deploy-autogpt-script/master/install-autogpt.sh
   ```

   Please note that downloading files in this way may be considered unsafe. Users should check the installation script before running it.

3. Open Terminal.

4. Navigate to the folder where the install-autogpt.sh file is located.

   ```bash=
   cd /path/to/install-autogpt.sh
   ```

   Replace `/path/to/` with the actual path where you have stored the install-autogpt.sh file.

5. Run install-autogpt.sh.

   ```bash=
   ./install-autogpt.sh
   ```

   If you encounter a "permission denied" error while running the script, you can use the following command to run it:

   ```bash=
   bash install-autogpt.sh
   ```

6. Follow the script prompt to enter the **OpenAI API key**. Please make sure to enter the correct key.

7. After the installation is complete, use the following command to start the Auto-GPT program.

   ```bash=
   cd ~/Downloads/Auto-GPT
   python -m autogpt
   ```
