# Setup server and python client

These are temporary instructions to setup the graphsensen openapi server and python client. 

    git clone https://github.com/graphsense/graphsense-kong
    cd graphsense-kong
    git submodule init
    git submodule update
    make openapi_server_without_auth
    cd graphsense-rest
    mkdir -p instance
    cp conf/config.py.tmp instance/config.py
    # Open `instance/config.py` and enter Cassandra connection configuration
    docker build -t openapi_server .
    docker rm --rm -p 9000:9000 openapi_server

Server should now be running and listening on port 9000. Test:
  
    curl localhost:9000/btc/addresses/3Hrnn1UN78uXgLNvtqVXMjHwB41PmX66X4

Generate the client:
  
    cd graphsense-kong
    docker run --rm \
      -v "${PWD}/graphsense-openapi:/spec" \
      -v "${PWD}/openapi_client:/build" \
      openapitools/openapi-generator-cli \
      generate -i /spec/graphsense.yaml -g python -o /build 

In openapi_client there should be the client source code. See the README.md there for example usage. In this part adapt the host url to `localhost:9000`:
  
    configuration = openapi_client.Configuration(
        host = "http://localhost:9000"
        )
 

If you have any questions, please get in touch with me!
