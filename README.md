# frontendproject

Test App
● Create an interface where users can enter their username and password.
● Once clicked on the login button execute below API and handle the success and failure
response.
API (GET):
http://www.axienta.lk/VantageCoreWebAPI/api/avLogin/Get?id=[username]&pas
sword=[password]&macaddress=123&versionnumber=123&deviceid=123
Username: 22612
Password: 12345
● When successful login, redirect to home view and display the user's FirstName in the
app bar.
● List all the users return from below api, display name and email in a list

API (GET):
https://jsonplaceholder.typicode.com/users
● Show a detailed view when clicking on each user item.
● On a user detail view, you should be able to add tasks (task id, task description) for each
user and save tasks in the local database.
● On the same detail view, show tasks for each user at the second half of the screen. If
tasks are not available should display a message.

You may consider below things when developing but not mandatory,
● Dependency injections
● Android architecture components
● Json to entity conversion
● Log necessary information
● Libraries usage

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
