generate:
	protoc -I . --go_out ./ --go-grpc_out ./ ./proto/*/**.proto

gateway:
	protoc -I . --grpc-gateway_out ./ --grpc-gateway_opt logtostderr=true --grpc-gateway_opt generate_unbound_methods=true ./proto/*/**.proto