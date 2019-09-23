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
      subject.top_up(Oystercard::MAX_BALANCE)
      expect { subject.top_up(20) }.to raise_error "You have exceeded the £#{Oystercard::MAX_BALANCE} limit"
    end
    
  end

# These tests no longer required as deduct method now private and tested within touch_out method
    # describe '#deduct' do
    #   it { is_expected.to respond_to(:deduct).with(1).argument }

    #   it 'deducts 10 from the balance' do
    #     subject.top_up(Oystercard::MAX_BALANCE)
    #     expect{ subject.deduct(10) }.to change{ subject.balance }.by -10
    #   end

    # end

    describe '#in_journey?' do

      it { is_expected.to respond_to :in_journey? }

      it 'starts not in a journey' do
        expect(subject.in_journey?).to eq false
      end

    end

    describe '#touch_in' do

      it { is_expected.to respond_to :touch_in }

      it 'recognises that the card has touched in and in journey' do
        subject.top_up(20)
        subject.touch_in
        expect(subject.in_journey?).to eq true
      end

      it 'raises error if balance is <£1' do
        expect { subject.touch_in }.to raise_error "Your balance is below the minimum amount £#{Oystercard::MIN_BALANCE}"
      end

    end

    describe '#touch_out' do

      it { is_expected.to respond_to :touch_out }

      it 'recognises that the card has touched out and is not in journey' do
        subject.top_up(20)
        subject.touch_in
        subject.touch_out
        expect(subject.in_journey?).to eq false
      end

      it 'reduces the balance by £1' do
        subject.top_up(10)
        subject.touch_in
        expect { subject.touch_out }.to change{ subject.balance }.by -Oystercard::MIN_BALANCE
      end

    end

end
