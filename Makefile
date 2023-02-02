all: editor

run-designer:
	docker run -d -p 8080:8080 swaggerapi/swagger-editor
	echo 'Designer UI is running on port 8080'

.PHONY: run-designer