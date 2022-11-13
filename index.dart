void main() {
  Deck myDeck = new Deck();
  // myDeck.printCards();
  print(myDeck.length);
}

class Card {
  String suit = '';
  String rank = '';
  String name = '';

  Card(String suit, String rank) {
    suit = suit;
    rank = rank;
    name = suit + rank;
  }

  toString() {
    return '$rank of $suit';
  }
}

class Deck {
  List<Card> cards = [];
  int length = 0;

  Deck() {
    cards = generateCards();
    length = cards.length;
  }

  toString() {
    return cards.toString();
  }

  printCards() {
    for (var card in cards) {
      print(card.name);
    }
  }

  void shuffle() {}

  void removeCard(Card card) {}

  void cardsWithSuit(String suit) {}

  List<Card> deal(int number) {
    return cards.sublist(1, number);
  }

  List<Card> generateCards() {
    const suits = [
      '♣',
      '♦',
      '♥',
      '♠'
    ]; // clubs (♣), diamonds (♦), hearts (♥) and spades (♠).
    const ranks = [
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      'J',
      'Q',
      'K',
      'A'
    ];
    List<Card> cards = [];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }

    return cards;
  }
}

// suits => clubs (♣')', diamonds (♦), hearts (♥) and spades (♠).
// ranks =>  2,3,4,5,6,7,8,9,10 J, Q, K, A
