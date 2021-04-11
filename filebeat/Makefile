.PHONY:
VERSION:=7.12.0

build-filebeat-%:
	docker build -t filebeat:${VERSION}-$* --build-arg VERSION=${VERSION} --build-arg CONFIG_FILE=filebeat_config_$*.yml .
