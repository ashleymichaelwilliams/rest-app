ashleymichaelwilliams/rest-app
==========

This is the beginning of a really simple REST API web service that processes commands using authenticated GET, POST, PUT, and Delete methods.


Syntax: 
	docker run -d --name rest-app -p 8500:8500 ashleymichaelwilliams/rest-app


CURL Examples:

curl -i -H -u <username>:<password> "Content-Type: application/json" -X GET http://ip address:port/todo/api/v1.0/tasks

curl -i -H -u <username>:<password> "Content-Type: application/json" -X POST -d '{"title":"Read a book"}' http://ip address:port/todo/api/v1.0/tasks

curl -i -H -u <username>:<password> "Content-Type: application/json" -X PUT -d '{"description":"I dont like reading"}' http://ip address:port/todo/api/v1.0/tasks/3

curl -i -H -u <username>:<password> "Content-Type: application/json" -X DELETE http://ip address:port/todo/api/v1.0/tasks/2

curl -i -H -u <username>:<password> "Content-Type: application/json" -X GET http://ip address:port/todo/api/v1.0/restart_app

```
