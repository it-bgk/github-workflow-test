.PHONY:

dev-build-filebeat-%:
	docker build \
		-t $(MY_DOCKER_REPO):dev-${VERSION}-$* -t $(MY_DOCKER_REPO):dev-${VERSION}-$*-$(EXT_GIT_REF_SHA1) -t $(MY_DOCKER_REPO):dev-latest -t $(MY_DOCKER_REPO):dev-latest-$* \
		-t $(MY_QUAY_REPO):dev-${VERSION}-$* -t $(MY_QUAY_REPO):dev-${VERSION}-$*-$(EXT_GIT_REF_SHA1) -t $(MY_QUAY_REPO):dev-latest -t $(MY_QUAY_REPO):dev-latest-$* \
		--build-arg VERSION=${VERSION} --build-arg CONFIG_FILE=filebeat_config_$*.yml .

dev-push-filebeat-%:
	docker push $(MY_DOCKER_REPO):dev-${VERSION}-$*
	docker push $(MY_DOCKER_REPO):dev-${VERSION}-$*-$(EXT_GIT_REF_SHA1)
	docker push $(MY_QUAY_REPO):dev-${VERSION}-$*
	docker push $(MY_QUAY_REPO):dev-${VERSION}-$*-$(EXT_GIT_REF_SHA1)

build-filebeat-%:
	docker build \
		-t $(MY_DOCKER_REPO):${VERSION}-$* -t $(MY_DOCKER_REPO):${VERSION}-$*-$(EXT_GIT_REF_SHA1) -t $(MY_DOCKER_REPO):latest -t $(MY_DOCKER_REPO):latest-$* \
		-t $(MY_QUAY_REPO):${VERSION}-$* -t $(MY_QUAY_REPO):${VERSION}-$*-$(EXT_GIT_REF_SHA1) -t $(MY_QUAY_REPO):latest -t $(MY_QUAY_REPO):latest-$* \
		--build-arg VERSION=${VERSION} --build-arg CONFIG_FILE=filebeat_config_$*.yml .

push-filebeat-%:
	docker push $(MY_DOCKER_REPO):${VERSION}-$*
	docker push $(MY_DOCKER_REPO):${VERSION}-$*-$(EXT_GIT_REF_SHA1)
	docker push $(MY_QUAY_REPO):${VERSION}-$*
	docker push $(MY_QUAY_REPO):${VERSION}-$*-$(EXT_GIT_REF_SHA1)

push-filebeat-latest-%:
	docker push $(MY_DOCKER_REPO):latest-$*
	docker push $(MY_QUAY_REPO):latest-$*

push-filebeat-latest:
	docker push $(MY_DOCKER_REPO):latest
	docker push $(MY_QUAY_REPO):latest
