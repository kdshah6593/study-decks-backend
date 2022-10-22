# StudyDecks

This is the documentation for the backend of the StudyDecks web app developed as a JavaScript project for Flatiron School.

The frontend repo is available at `https://github.com/kdshah6593/study-decks-frontend`

## Description

StudyDecks is a web application developed using JavaScript on the Frontend and Rails as an API as the backend. This web app is intended as a simple study tool for users. A user can have multiple decks and within each deck they can create flashcards and go between them. A user can flip the flashcard over, thus they can quiz themselves.

This API was developed using `ruby 3.0.0` and `Rails 6.1`

## Installation

NOTE: CURRENTLY NOT DEPLOYED OR HOSTED DUE TO HEROKU FREE TIER BEING REMOVED
~~To use this app, check out the deployed version at [StudyDecks](https://study-decks.herokuapp.com/)~~

To play around with the code of the app, clone these repos:

1. `$ git clone https://github.com/kdshah6593/study-decks-frontend`
2. `$ git clone https://github.com/kdshah6593/study-decks-backend`

## Usage

After cloning, open up 2 terminals and access the directory for each of them in each terminal `$ cd study-decks-frontend` & `$ cd study-decks-backend` (if nested under other directories be sure to include those in the path)

In your terminal running the BACKEND:

Run `$ bundle install` to add dependencies, then run `$ rails db:migrate`, and then start the server `$ rails s`

In your terminal running the FRONTEND:

Run `$ explorer.exe index.html` (for Windows/WSL sytems) or `open index.html` (for Macs); this will open up the frontend page in your default browser

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kdshah6593/study-decks-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Code of Conduct](https://github.com/kdshah6593/study-decks-backend/blob/main/CODE_OF_CONDUCT.md).

## License

This app is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StudyDecks project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [Code of Conduct](https://github.com/kdshah6593/study-decks-backend/blob/main/CODE_OF_CONDUCT.md).
