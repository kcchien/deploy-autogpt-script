#!/bin/bash

# Step 1: Clone the Git repo with the stable branch
cd ~/Downloads/
git clone -b stable https://github.com/Torantulino/Auto-GPT.git

# Step 2: Change to the cloned repo directory
cd Auto-GPT

# Step 3: Check Python version and install requirements
python_version=$(python3 -c 'import sys; print(sys.version_info[:])')
if [[ $python_version < "(3, 8)" ]]; then
  echo "Error: Python version 3.8 or higher is required to run this script."
  exit 1
else
  echo "Python version check passed."
  pip3 install -r requirements.txt
fi

# Step 4: Copy .env.template to .env
cp .env.template .env

# Step 5: Prompt user to input OPENAI API KEY
read -p "Please enter your OpenAI API key: " openai_api_key

# Step 6: Replace OPENAI_API_KEY value in .env file with user input
if [ -z "$openai_api_key" ]; then
  read -p "Warning: Without an OpenAI API key, the program will not function properly. Do you want to continue (Y/N)? " continue
  if [ "$continue" != "Y" ] && [ "$continue" != "y" ]; then
    echo "Installation aborted."
    exit 1
  fi
else
  sed -i '' "s/OPENAI_API_KEY=.*/OPENAI_API_KEY=$openai_api_key/g" .env
fi


# Step 7: Prompt user installation complete and provide instructions for starting program
echo "Installation complete. To start the program, please enter the following command:"
echo "cd ~/Downloads/Auto-GPT"
echo "python -m autogpt"