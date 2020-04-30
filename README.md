# FreeRun API
FreeRun e-commerce API

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![MIT License][license-shield]][license-url]



<!-- PROJECT DETAILS -->
<br />
<p align="center">

  <h2 align="center">FREE RUN API</h2>

  <p align="center">
    Rails API for a full-stack modern e-commerce prototype project, this is the back-end repo which was developed using Ruby on Rails, PostgreSQL, tested with RSpec, implemented JWT tokens for authentication/authorization and made use of AWS S3 and Rails Active Storage to save images.
    <br />
    <br />
    <a href="https://github.com/Redvanisation/FreeRunAPI/issues">Report Bug</a>
    ·
    <a href="https://github.com/Redvanisation/FreeRunAPI/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)


<!-- ABOUT THE PROJECT -->
## About The Project

This project is a **PROTOTYPE** of a real e-commerce that I have previously developed, it's a full-stack mobile responsive app with a **React** front-end and a **Ruby on Rails API** back-end with **AWS S3** for images' storage via **active storage**, it has a PayPal checkout integration and the cart is saved in the browser's local storage. This is the back-end repo and you could find the front-end code on [https://github.com/Redvanisation/FreeRun](https://github.com/Redvanisation/FreeRun).


### Built With

* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](https://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/)
* [JWT](https://jwt.io/)
* [RSpec](https://rspec.info/)



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.



### Prerequisites

* `ruby '2.6.3`
* `rails 6.0.2`



### Installation
 
1. Clone the repo and cd into it
```sh
git clone git@github.com:Redvanisation/FreeRunAPI.git

cd freerunapi
```
2. Install the gems
```sh
bundle install
```
3. Create the database, migrate and seed it
```sh
rails db:create db:migrate db:seed
```
4. Run the development server and start using the API on **port:3000**
```sh
rails start
```



<!-- USAGE EXAMPLES -->
## Usage

- Run the following command to get all the available API endpoints
```sh
rails routes
```
- Requests can be made to the sessions routes `auth/login, auth/logout` to login and create a **JWT token** which will be stored into an HTTPOnly cookie and sent back in the response and used for authentication later on, and to logout.
- The users route `auth/register` is used to register new users and doesn't require a JWT token.
- The products routes can be used to make RESTful requests in order to get the list of products and update or delete them.
- The orders routes are used to retreive the registered users' orders history and the products they have previously purchased.
- The whishlist routes are used to retreive the registered users' wishlists or to delete products from it.



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

**Radouane Khiri** - [@redvanisation](https://twitter.com/redvanisation) - [LinkedIn](https://www.linkedin.com/in/redvan/) - redvanisation@gmail.com





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/Redvanisation/FreeRun
[license-url]: https://github.com/Redvanisation/FreeRunAPI/blob/develop/LICENSE
