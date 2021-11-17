M = $(shell printf "\033[34;1m▶\033[0m")

.PHONY: help
help: ## Prints this help message
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######################
### MAIN FUNCTIONS ###
######################

.PHONY: fakertodb_run
fakertodb_run: ## Run the faker2db docker container
	$(info $(M) Starting an instance of faker2db)
	@docker-compose -f ./docker/faker2db/docker-compose.yml up

.DEFAULT_GOAL := help