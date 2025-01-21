import ballerina/http;


@http:ServiceConfig {
        cors: {
            allowOrigins: ["http://localhost:3000"], // Allow your front-end's origin
            allowMethods: ["GET"] // Allow GET requests
        }
    }
service /users on new http:Listener(8080) {
    
    resource function get [string id]() returns json {
        return {id: id, name: "John Doe", email: "john.doe@example.com"};
    }
}
