# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

import datetime
import pathlib
import tomllib

project_root = pathlib.Path(__file__).parent.parent.resolve()
pyproject_toml = project_root / "pyproject.toml"
pyproject_data = {}
with pyproject_toml.open("rb") as f:
    pyproject_data = tomllib.load(f)

current_year = datetime.datetime.now(tz=datetime.UTC).year

project = pyproject_data["project"]["name"]
author = pyproject_data["project"]["authors"][0]["name"]
copyright = f"{current_year}, {author}"  # noqa: A001
release = pyproject_data["project"]["version"]

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.napoleon",
    "sphinx.ext.intersphinx",
    "sphinx.ext.viewcode",
    "sphinx.ext.doctest",
    "sphinx_rtd_theme",
]

templates_path = ["_templates"]
exclude_patterns = ["test_*"]


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = "sphinx_rtd_theme"
html_theme_options = {
    "collapse_navigation": False,
    "sticky_navigation": True,
    "navigation_depth": -1,
}
html_static_path = ["_static"]
