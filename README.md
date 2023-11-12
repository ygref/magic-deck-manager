# Magic the Gathering Deck Manager

Browser based application for deck management and card management.  
Streamlined for MTG players with QoL in mind.

The user can login and create decks, utilize the frontend API to search for card by name, and add the card via pulldown
by quantity to a specific deck. On the deck page the cards display minimal information for ease, and on button click
will display in-depth info on the card.

React + Vite, Ruby + Rails, PostgreSQL database, Utilized API: Scryfall API.

## Backend

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

## Roadmap

Implement single-button login / OAuth for users for QoL.
Implement an images table that allows the user to go to a specific card and visually see all possible card images,
this would be especially helpful to cards in alternate languages.
Implement more robust pricing logic, to be able to cross reference prices from multiple sources without visual clutter.
