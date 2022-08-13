COMPOSE_DEV		:= docker compose

dev: dev-bg
.PHONY: dev

dev-bg:
	$(COMPOSE_DEV) up --build -d
.PHONY: dev-bg

dev-fg:
	$(COMPOSE_DEV) up --build
.PHONY: dev-fg

dev-stop:
	$(COMPOSE_DEV) down
.PHONY: dev-stop

dev-prune:
	$(COMPOSE_DEV) down -v
.PHONY: dev-prune

dev-ps:
	$(COMPOSE_DEV) ps
.PHONY: dev-ps
