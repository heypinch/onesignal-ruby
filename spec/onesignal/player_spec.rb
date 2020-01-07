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
        'device_type' => 1,
        'email_auth_hash' => nil,
        'identifier' => '7abcd558f29d0b1f048083e2834ad8ea4b3d87d8ad9c088b33c132706ff445f0',
        'language' => 'en',
        'timezone' => 0,
        'game_version' => '1.0',
        'device_model' => 'iPhone8,2',
        'device_os' => '13.2',
        'ad_id' => '',
        'sdk' => '',
        'session_count' => 1,
        'tags' => { 'foo' => 'bar' },
        'amount_spent' => 99.99,
        'created_at' => 0,
        'playtime' => 86400,
        'badge_count' => 1,
        'last_active' => '2020-01-01 12:00:00.GB',
        'notification_types' => 1,
        'test_type' => 1,
        'long' => 0.00,
        'lat' => 0.00,
        'country' => 'GB',
        'external_user_id' => 'test'
      )
    end
  end
end
