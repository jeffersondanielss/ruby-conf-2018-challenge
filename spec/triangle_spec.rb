require 'spec_helper'

describe Triangle::Types do
  let(:input) { [1, 1, 1] }
  let(:instance) { described_class.new(input) }

  describe '#equilateral?' do
    subject { instance.equilateral? }

    context 'when all sides is equal' do
      let(:input) { [0.1, 0.1, 0.1] }

      it { is_expected.to be_truthy }
    end

    context 'when just two sides is equal' do
      let(:input) { [1, 1, 0] }

      it { is_expected.to be_falsy }
    end

    context 'when all sides is diferent' do
      let(:input) { [2, 1, 0] }

      it { is_expected.to be_falsy }
    end
  end

  describe '#isosceles?' do
    subject { instance.isosceles? }

    context 'when all sides is equal' do
      it { is_expected.to be_truthy }
    end

    context 'when just two sides is equal' do
      let(:input) { [1, 1, 0] }

      it { is_expected.to be_truthy }
    end

    context 'when all sides is diferent' do
      let(:input) { [2, 1, 0] }

      it { is_expected.to be_falsy }
    end
  end

  describe '#scalene?' do
    subject { instance.scalene? }

    context 'when all sides is equal' do
      it { is_expected.to be_falsy }
    end

    context 'when just two sides is equal' do
      let(:input) { [1, 1, 0] }

      it { is_expected.to be_falsy }
    end

    context 'when all sides is diferent' do
      let(:input) { [2, 1, 0] }

      it { is_expected.to be_truthy }
    end
  end
end
