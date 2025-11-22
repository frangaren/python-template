# 🐍 Python Template Project
This is a template repository for Python projects, designed to help you get
started quickly with a well-structured and organized codebase. It includes
essential configurations and best practices for Python development. It has the
following features:
- 📁 **Project Structure**: A clean and organized directory structure for your
  Python project.
- 📦 **Dependency Management**: Uses Poetry for managing project dependencies
  and virtual environments.
- ✨ **Linting and Formatting**: Preconfigured with Ruff for linting and code
  formatting.
- 🧐 **Type Checking**: Integrated Mypy for static type checking.
- 🧪 **Testing**: Set up with `pytest` for writing and running tests.
- 📚 **Documentation**: Sphinx configured for generating project documentation.
- 🚀 **CI/CD Pipelines**: GitHub Actions workflows for continuous integration
  and deployment of documentation.

## 🧭 Getting Started
To use this template, simply click the "Use this template" button on the
GitHub repository page. This will create a new repository in your GitHub
account with the same structure and files as this template.

After creating your repository, follow these steps to set up your project:
1. Clone your new repository to your local machine:
   ```bash
   git clone <your-repo-url>
   cd <your-repo-name>
   ```
2. Install dependencies using Poetry:
   ```bash
   poetry install
   ```
3. Start developing your Python project!

## ✨ Linting and formatting
This template includes configurations for Ruff and Mypy to help maintain code
quality. You can run the following commands to check your code:
- To check for formatting adherence:
  ```bash
  make format-check
  ```
- To check for linting issues:
  ```bash
  make lint
  ```
- To check for type issues:
  ```bash
  make type-check
  ```
Also, you can automatically fix formatting issues by running:
```bash
make format
```
And, additionally, you can automatically fix linting issues by running:
```bash
make lint-fix
```

## 🧪 Testing
This template uses `pytest` for testing. You can run your tests using the
following command:
```bash
make test
```
This will execute all tests in the `tests/` directory, the tests found in
files matching the pattern `test_*.py` or `*_test.py`, and also doctests.

To run tests with coverage reporting, use:
```bash
make coverage
```
This will generate a coverage report and display it in the terminal.

## 📚 Documentation
You can generate project documentation using Sphinx. To build the documentation,
run:
```bash
make docs
```
This will create HTML documentation in the `docs/_build` directory.

Sphinx is preconfigured to generate documentation from docstrings in your code.
But, you can also add additional documentation files in the `docs/` directory.

## 🚀 CI/CD Pipelines
This template includes GitHub Actions workflows for continuous integration and
continuous deployment (CI/CD). The workflows are defined in the
`.github/workflows/` directory.

There are workflows for:
- Checking code quality (linting, format checking and type checking) and
  running tests on every push and pull request.
- Building and publishing documentation to GitHub Pages on every push to the
  `main` branch.

# 🌱 Contributing
Contributions are welcome! If you find any issues or have suggestions for
improvements, please open an issue or submit a pull request.
