.PHONY: test test-bash test-zsh check

SHELLSPEC_OPTS := --format documentation

help:  ## Show this help
	@grep -E '^[a-zA-Z0-9_ -]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

test: test-zsh test-bash  ## Run the tests

test-bash:  ## Run tests in Bash
	@echo "Testing in bash..."
	shellspec $(SHELLSPEC_OPTS) -s $$(which bash)

test-zsh:  ## Run tests in Zsh
	@echo "Testing in zsh..."
	shellspec $(SHELLSPEC_OPTS) -s $$(which zsh)

check:  ## Run shellcheck
	shellcheck lib/*.sh
