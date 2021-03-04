# API Layout

# User Story
- User should be able to create/edit/update/delete a deck
- User should be able to create/edit/update/delete a flashcard

# Models
- User
- Decks
- Flashcards

# User
- username
- password

- has many decks
- has many flashcards through decks

# Decks
- title

- has many flashcards
- belongs to user

# Flashcards
- front side
- back side

- belongs to deck




# Stretch Goals
