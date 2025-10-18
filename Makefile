.PHONY: help install lint clean

.DEFAULT_GOAL := help

# Help
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Installation
install: ## Install yamllint
	@echo "Installing yamllint..."
	@pip install --user yamllint
	@echo "✓ yamllint installed"

# Linting
lint: install ## Lint YAML files
	@echo "Linting YAML files..."
	@yamllint -c .github/linters/.yaml-lint.yml .github/workflows/
	@yamllint -c .github/linters/.yaml-lint.yml workflow-templates/
	@echo "✓ Linting complete"

# Cleanup
clean: ## Clean temporary files
	@echo "Cleaning temporary files..."
	@find . -type f -name "*~" -delete 2>/dev/null || true
	@find . -type f -name "*.bak" -delete 2>/dev/null || true
	@echo "✓ Cleanup complete"
