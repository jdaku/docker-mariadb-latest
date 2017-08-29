# @IgnoreInspection BashAddShebang

# Carte Financement Makefile

# BUILDING
#------------------------------------------------------
build:
	docker-compose -f docker-compose.yml build;
	./_bin/_whalesay --say "The Containers have been built!";

down:
	./_bin/_down;
	./_bin/_whalesay --say "The Containers have been stopped!";

up:
	docker-compose -f docker-compose.yml up -d;
	./_bin/_whalesay --say "The Containers are running!";

# UTILS
#------------------------------------------------------
shell-mariadb:
	./_bin/_shell --container_name mariadb_cf  --service_name "mariadb";

tail-log:
	./_bin/_tail --container_name mariadb_cf --service_name "mariadb";

