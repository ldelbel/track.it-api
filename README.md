# Track.it-API

[![View Code](https://img.shields.io/badge/View%20-Code-green)]()
[![Github Issues](https://img.shields.io/badge/GitHub-Issues-orange)]()
[![GitHub Pull Requests](https://img.shields.io/badge/GitHub-Pull%20Requests-blue)]()

<br />
<p align="center">
  <a href="https://github.com/ldelbel/track.it-api">
    <img src="run.png" alt="Logo" width="200">
  </a>

  <h3 align="center">API for Mobile Running App<h3>
  <p align="center">
    <a href="https://github.com/ldelbel/track.it-api"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    -
    <a href="https://github.com/ldelbel/track.it-api/issues">Report Bug</a>
    -
    <a href="https://github.com/ldelbel/track.it-api/pulls">Request Feature</a>
    -
  </p>
</p>
    
## Table of Contents

<p align="center">
  <a href="#brief">Project Briefing</a> |
  <a href="#require">Technical Requirements</a> |
  <a href="#arch"> Structure and Quality Control</a> |
  <a href="#ins">Installing</a> |
  <a href="#with">Built With</a> |
  <a href="#author">Author</a>
</p>

## Project Briefing <a name = "brief"></a>

**--This is the back-end API of a full stack project, to see the React front-end, check [here](https://github.com/ldelbel/track.it)**

This project is the Final Capstone Project required for completing the Microverse Technical Curriculum [Microverse](https://www.microverse.org/).

The capstone project is performed under time restrictions and presents business-like specifications to be followed. The goal is to simulate as much as possible the real conditions of business situations and practice professional execution.

The specifications of this project can be found in the [Tracking App](https://www.notion.so/Final-Capstone-Project-Tracking-App-22e454da738c46efaf17721826841772).

## Technical Requirements <a name = "require"></a>

The original specification and design for the project followed those of [Gregoire Vella's on Behance 'Bodytrack.it'](https://www.behance.net/gallery/13271423/Bodytrackit-An-iOs-app-Branding-UX-and-UI). It was required to follow the design and we are supposed to change the theme of the project. I chose to make fully functional running app to challenge myself and for learning purposes.

The provided requirements stated that we must build the app following these guidelines:

- Connects to the back-end API to send and receive domain data
- With routes for each of the screens, so the user can easily go back and forward
- Using redux to store info used across the app, like the username

This project is a **Full Stack Project**, built in two parts. This repository contains the back-end, and this [link](https://github.com/ldelbel/track.it) will lead you to the repository where the front-end (the React interface) is.

## Structure and Quality Control <a name = "arch"></a>

### API Structure

This application is the backend API to be used exclusively by the its counterpart on the Track.it Full Stack project. The front-end project, built with React, can be found [here](https://github.com/ldelbel/track.it)

## Endpoints 

<table><thead>
<tr>
<th>Endpoint</th>
<th style="text-align: right">Functionality</th>
</tr>
</thead><tbody>
<tr>
<td> GET /users/</td>
<td style="text-align: right">Get all users</td>
</tr>
<tr>
<td>GET /users/:user_id</td>
<td style="text-align: right">Get user by id</td>
</tr>
<tr>
<td>GET /users/:user_id/running_sessions</td>
<td style="text-align: right">Get running_sessions from user</td>
</tr>
<tr>
<td>POST /users</td>
<td style="text-align: right">Create user</td>
</tr>
<td>POST /users/:user_id/running_sessions</td>
<td style="text-align: right">Create running_session to user</td>
</tr>
<tr>
<td>PATCH  /users/:user_id</td>
<td style="text-align: right">Edit user</td>
</tr>
<tr>
<td>PATCH  /users/:user_id/running_sessions/:id</td>
<td style="text-align: right">Edit running_session</td>
</tr>
<tr>
<td>DELETE /users/:user_id</td>
<td style="text-align: right">Delete user</td>
</tr>
<tr>
<td>DELETE /users/:user_id/running_sessions/:id</td>
<td style="text-align: right">Delete running_session</td>
</tr>
<tr>
<td>GET /users/find {params: name}</td>
<td style="text-align: right">Find User</td>
</tr>
</tbody></table>

### Quality Control

This project was built following the rules of [Rubocop](https://rubocop.org/) and [Stylelint](https://stylelint.io/).

## 🔧 Built with <a name = "with"></a>

- Ruby
- Rails
- Tested with Rspec

## 🛠 Requirements <a name = "req"></a>

You'll need to have Ruby installed to be able to run this project. You can check how to install it [here](https://www.ruby-lang.org/en/documentation/installation/).

## 🔨 Setup and Installing <a name = "ins"></a>

To setup the project, run the following commands on terminal:

```
$ cd <folder> (the place you want to have the files installed)
$ git clone https://github.com/ldelbel/track.it-api.git
$ cd track.it-api
$ bundle install

```

This will install the dependencies in your local machine. This process can take a few minutes.

## 🔨 Running Locally

After installing the dependencies you can start the application running the code below

```
$ rails server

```

If your default browser doesn't open automatically, visit http://localhost/3000.

## 🔨 Testing

This API was built using **TDD**, with **Rspec**

To run the tests, use the command below on terminal in the root folder

```
$ rspec

```

## ✒️ Author <a name = "author"></a>

### 👨‍💻 Lucas Delbel

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/ldelbel)
[![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/lucasdelbel/)
[![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:lucdelbel@gmail.com)
[![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/delbel_lucas)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page]().

## 👍 Show your support

Give a ⭐️ if you like this project!

## :clap: Acknowledgements

- Microverse: [@microverse](https://www.microverse.org/)
- Ruby on Rails: [@rails](https://rubyonrails.org/)
- Gregoire Vella's on Behance 'Bodytrack.it': [@bodytrack.it](https://www.behance.net/gallery/13271423/Bodytrackit-An-iOs-app-Branding-UX-and-UI)
