@echo off
echo ====================================================
echo  MCP-based AI Agent Setup Script
echo ====================================================
echo.

echo Step 1: Creating virtual environment...
python -m venv venv
if %errorlevel% neq 0 (
    echo Error: Failed to create virtual environment
    echo Please ensure Python 3.13+ is installed
    pause
    exit /b 1
)

echo Step 2: Activating virtual environment...
call venv\Scripts\activate

echo Step 3: Upgrading pip...
python -m pip install --upgrade pip

echo Step 4: Installing dependencies...
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo Error: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo ====================================================
echo  Setup Complete!
echo ====================================================
echo.
echo Next steps:
echo 1. Copy .env.example to .env
echo 2. Add your API keys to .env file:
echo    - OPENAI_API_KEY=your_key_here
echo    - GROQ_API_KEY=your_key_here  
echo    - TAVILY_API_KEY=your_key_here
echo 3. Run the server: python server.py
echo 4. Run the UI: streamlit run ui.py
echo.
echo To activate the environment later, run:
echo   venv\Scripts\activate
echo.
pause
