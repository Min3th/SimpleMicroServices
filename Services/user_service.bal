import ballerina/http;

service /users on new http:Listener(8080) {
    resource function get [string id]() returns json {
        return {id:id,product:"Laptop",amount:1200};
    }
}