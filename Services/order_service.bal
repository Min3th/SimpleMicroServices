import ballerina/http;

@http:ServiceConfig {
        cors: {
            allowOrigins: ["http://localhost:3000"],
            allowMethods: ["GET"]
        }
    }

service /orders on new http:Listener(8081) {
    
    resource function get [string id]() returns json {
        return {id: id, product: "Laptop", amount: 1200};
    }
}
