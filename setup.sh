#!/bin/bash

echo "===================================================="
echo " MCP-based AI Agent Setup Script"
echo "===================================================="
echo

echo "Step 1: Creating virtual environment..."
python3 -m venv venv
if [ $? -ne 0 ]; then
    echo "Error: Failed to create virtual environment"
    echo "Please ensure Python 3.13+ is installed"
    exit 1
fi

echo "Step 2: Activating virtual environment..."
source venv/bin/activate

echo "Step 3: Upgrading pip..."
python -m pip install --upgrade pip

echo "Step 4: Installing dependencies..."
pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "Error: Failed to install dependencies"
    exit 1
fi

echo
echo "===================================================="
echo " Setup Complete!"
echo "===================================================="
echo
echo "Next steps:"
echo "1. Copy .env.example to .env"
echo "2. Add your API keys to .env file:"
echo "   - OPENAI_API_KEY=your_key_here"
echo "   - GROQ_API_KEY=your_key_here"
echo "   - TAVILY_API_KEY=your_key_here"
echo "3. Run the server: python server.py"
echo "4. Run the UI: streamlit run ui.py"
echo
echo "To activate the environment later, run:"
echo "  source venv/bin/activate"
echo
