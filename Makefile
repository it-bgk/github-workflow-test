.PHONY: 

help:
	@echo "Please use one of the subcommands via TAB"

build-filebeat-%:
	${MAKE} -C filebeat build-filebeat-$*
push-filebeat-%:
	${MAKE} -C filebeat push-filebeat-$*
test-filebeat:
	cd filebeat; docker-compose up -d; docker-compose logs -f
clean-filbeat:
	cd filebeat; docker-compose down -v

build-logstash:
	@docker build -t logstash:latest logstash/