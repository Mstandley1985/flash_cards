require './lib/card'
require './lib/turn'

Rspec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    expect(turn).to be_instance_of(Turn)
    expect(card).to be_instance_of(Card)

  end

  it 'guesses' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.guess).to eq("Juneau")
  end

  it 'has an answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.answer).to eq("Juneau")
  end

  it ''




  # it 'provides feedback' do
  #   expect(@turn_correct.feedback).to eq("Correct!")
  #   expect(@turn_incorrect.feedback).to eq("Incorrect.")
  # end