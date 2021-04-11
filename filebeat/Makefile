.PHONY:
VERSION:=7.12.0
REPO=it-bgk

build-filebeat-%:
	docker build -t ${REPO}/filebeat:${VERSION}-$* -t ${REPO}/filebeat:latest -t ${REPO}/filebeat:latest-$* --build-arg VERSION=${VERSION} --build-arg CONFIG_FILE=filebeat_config_$*.yml .

push-filebeat-%:
	docker push ${REPO}/filebeat:${VERSION}-$*

push-filebeat-latest-%:
	docker push ${REPO}/filebeat:latest-$*

push-filebeat-latest:
	docker push ${REPO}/filebeat:latest
