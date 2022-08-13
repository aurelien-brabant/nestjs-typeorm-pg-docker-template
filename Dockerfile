FROM		node:16-bullseye

WORKDIR		/usr/app

ENTRYPOINT	[ "sh", "-c", "yarn install && yarn start:dev" ]
