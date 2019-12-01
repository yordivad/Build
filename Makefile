# Makefile


VERSION = $(shell dotnet gitversion /showvariable NuGetVersion)

.PHONY: help


build:

	docker build -f ./dotnet/2.2/sdk/Dockerfile -t dotnet:2.2 .

	docker build -f ./dotnet/3.0/sdk/Dockerfile -t dotnet:3.0 .

	docker build -f ./skaffold/Dockerfile -t skaffold:latest .

login:

	docker login -u roygi -p $(APIKEY) roygi-docker-mdocker.bintray.io

tag:

	docker tag dotnet:2.2 roygi-docker-mdocker.bintray.io/dotnet/sdk:2.2

	docker tag dotnet:3.0 roygi-docker-mdocker.bintray.io/dotnet/sdk:3.0

	docker tag skaffold:latest roygi-docker-mdocker.bintray.io/skaffold:latest

push:

	docker push roygi-docker-mdocker.bintray.io/dotnet/sdk:2.2

	docker push roygi-docker-mdocker.bintray.io/dotnet/sdk:3.0

	docker push roygi-docker-mdocker.bintray.io/skaffold:latest
