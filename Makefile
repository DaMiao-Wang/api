API_PROTO_FILES=$(shell find . -name *.proto)

.PHONY: api
# generate api proto
api:
	protoc --proto_path=. \
 	       --go_out=paths=source_relative:. \
	       $(API_PROTO_FILES)
