# MCP-based AI Agent

A sophisticated AI agent system built on the Model Context Protocol (MCP) that integrates multiple tools and data sources for intelligent query processing and mathematical problem solving.

## 🚀 Features

- **MCP Server Integration**: Built on FastMCP for efficient tool management
- **Multi-Modal AI Agent**: Powered by LangChain and LangGraph with React capabilities
- **Mathematical Problem Solving**: Advanced calculator with symbolic computation support
- **Vector Search**: FAISS-powered document retrieval with OpenAI embeddings
- **GSM8K Evaluation**: Comprehensive testing framework for mathematical reasoning
- **Solar/Energy Domain**: Specialized knowledge base for electricity and solar panel queries
- **Real-time UI**: Streamlit-based interactive interface
- **Performance Analytics**: Built-in evaluation and comparison tools

## 🏗️ Architecture

```
MCP_Project/
├── server.py              # MCP server with tools and resources
├── client.py              # Agent client with memory and preprocessing
├── ui.py                  # Streamlit web interface
├── eval_gsm8k.py         # GSM8K evaluation framework
├── table.py              # Data table utilities
├── docs/                 # Knowledge base
│   ├── appliances.json   # Appliance specifications
│   ├── products.json     # Product catalog
│   ├── tarrifs.json      # Electricity tariffs
│   └── weather_api.py    # Weather integration
├── mcp-server/           # MCP server configuration
└── outputs/              # Evaluation results and analytics
```

## 🛠️ Tools and Capabilities

### MCP Server Tools
- **Calculator**: Advanced mathematical expression evaluator with safety checks
- **GSM8K Solver**: Specialized mathematical problem solver
- **Document Reader**: PDF and text document processing
- **JSON Data**: Structured data queries for appliances, products, and tariffs

### AI Agent Features
- **React Pattern**: Reasoning and action cycles for complex problem solving
- **Memory Management**: Persistent conversation history
- **Context Preprocessing**: Intelligent query enhancement for domain-specific topics
- **Multi-source Integration**: Combines tools, documents, and structured data

## 📋 Prerequisites

- Python 3.13+
- OpenAI API key (for embeddings and LLM)
- Groq API key (for evaluation comparisons)
- Git for version control

## 🚀 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Omermuhammadi/-MCP-based-AI-agent.git
cd -MCP-based-AI-agent
```

### 2. Set Up Virtual Environment

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Environment Configuration

Create a `.env` file in the project root:

```env
OPENAI_API_KEY=your_openai_api_key_here
GROQ_API_KEY=your_groq_api_key_here
TAVILY_API_KEY=your_tavily_api_key_here
```

## 🎯 Usage

### Running the MCP Server

```bash
python server.py
```

### Using the AI Agent

```python
from client import run_agent
import asyncio

# Example usage
async def main():
    response = await run_agent("Calculate the square root of 144")
    print(response)

asyncio.run(main())
```

### Web Interface

Launch the Streamlit UI:

```bash
streamlit run ui.py
```

Access the interface at `http://localhost:8501`

### GSM8K Evaluation

Run comprehensive mathematical reasoning evaluation:

```bash
python eval_gsm8k.py
```

This generates:
- `outputs/gsm8k_eval.csv` - Detailed evaluation results
- `outputs/accuracy.png` - Performance comparison chart
- `outputs/groq_answers.csv` - Groq model responses
- `outputs/agent_answers.csv` - Agent responses

## 📊 Performance

The system has been evaluated on the GSM8K dataset for mathematical reasoning capabilities. Results are automatically generated and saved in the `outputs/` directory with visual comparisons between different models.

## 🔧 Configuration

### MCP Server Configuration

The server can be configured in `mcp-server/pyproject.toml`:

```toml
[project]
name = "mcp-server"
version = "0.1.0"
description = "MCP-based AI Agent Server"
requires-python = ">=3.13"
dependencies = ["mcp[cli]>=1.13.1"]
```

### Agent Configuration

Key settings in `client.py`:
- **Solar Keywords**: Automatic context enhancement for energy-related queries
- **Memory Management**: Persistent conversation state
- **Tool Integration**: Dynamic tool loading and execution

## 🧪 Testing

### Unit Tests

```bash
pytest tests/
```

### Integration Tests

```bash
python -m pytest tests/integration/
```

### GSM8K Benchmark

```bash
python eval_gsm8k.py --dataset-size 100
```

## 📚 Documentation

### API Documentation

The MCP server exposes the following tools:

- `calculator`: Safe mathematical expression evaluation
- `gsm8k_solver`: Specialized math problem solver
- `read_document`: PDF and text processing
- `get_json_data`: Structured data queries

### Data Sources

- **Appliances**: Energy consumption specifications
- **Products**: Solar panel and battery catalog
- **Tariffs**: Electricity pricing information
- **Weather**: Integration for solar calculations

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Setup

```bash
# Install development dependencies
pip install -r requirements.txt
pip install black flake8 pytest

# Format code
black .

# Lint code
flake8 .

# Run tests
pytest
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Model Context Protocol (MCP)](https://github.com/modelcontextprotocol) for the foundation
- [LangChain](https://github.com/langchain-ai/langchain) for agent framework
- [FastMCP](https://github.com/jlowin/fastmcp) for server implementation
- [GSM8K Dataset](https://github.com/openai/grade-school-math) for evaluation

## 📞 Support

For questions and support, please open an issue on the GitHub repository.

---

**Built with ❤️ using MCP, LangChain, and modern AI tools**
