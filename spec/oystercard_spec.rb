require 'oystercard'

describe Oystercard do

  it { is_expected.to respond_to :balance }

  it 'has a balance of zero' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
  it { is_expected.to respond_to :top_up }
  it 'tops up the balance by 10' do
    subject.top_up(10)
    expect(subject.balance).to eq 10
  end
  it 'tops up the balance by any given value' do
    subject.top_up(10)
    subject.top_up(20)
    expect(subject.balance).to eq 30
  end
    


  end



end
