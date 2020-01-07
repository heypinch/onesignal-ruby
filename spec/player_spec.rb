# frozen_string_literal: true

require 'spec_helper'
include OneSignal

describe Player do
  it 'requires at least some contents' do
    expect { described_class.new }.to raise_error ArgumentError, 'missing device_type'
  end

  it 'creates a new player' do
    expect(described_class.new(device_type: 1)).to be_instance_of Player
  end

  context 'json' do
    subject do
      build :player,
        device_type: 1
    end

    it 'serializes as json' do
      expect(subject.as_json).to eq(
        'device_type' => 1
      )
    end
  end
end
