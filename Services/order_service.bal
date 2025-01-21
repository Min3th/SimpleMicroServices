import ballerina/http;

service /orders on new http:Listener(8081){
    resource function get [string id]() returns json {
        return {id:id,product: "Laptop", amount:1200};
    }
}