require 'oystercard'

describe Oystercard do

  it { is_expected.to respond_to :balance }

  it 'has a balance of zero' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do

    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'can top up the balance by 10' do
      expect{ subject.top_up(10) }.to change{ subject.balance }.by 10
    end

    it 'tops up the balance twice' do
      subject.top_up(10)
      subject.top_up(20)
      expect(subject.balance).to eq 30
    end

    it 'raises an error when new balance exceeds £90' do
      subject.top_up(80)
      expect { subject.top_up(20) }.to raise_error 'You have exceeded the £90 limit'
    end



  end



end
