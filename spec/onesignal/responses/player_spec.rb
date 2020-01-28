# frozen_string_literal: true

require 'spec_helper'

describe OneSignal::Responses::Player do
  let(:json) do
    <<~JSON
        {
            "id": "1",
            "identifier": "7abcd558f29d0b1f048083e2834ad8ea4b3d87d8ad9c088b33c132706ff445f0",
            "session_count": 1,
            "language": "en",
            "timezone": 0,
            "game_version": "1.0",
            "device_os": "13.2",
            "device_type": 1,
            "device_model": "iPhone8,2",
            "tags": { "foo": "bar" },
            "ad_id": "",
            "last_active": "2020-01-01 12:00:00.GB",
            "playtime": 86400,
            "amount_spent": 99.99,
            "created_at": 0,
            "invalid_identifier": "",
            "badge_count": 0,
            "sdk": "",
            "test_type": 1,
            "ip": "127.0.0.1"
        }
    JSON
  end

  it 'creates an object from a JSON string' do
    expect(described_class.from_json(json)).to be_instance_of described_class
  end

  it 'creates an object from an hash' do
    expect(described_class.from_json(JSON.parse(json))).to be_instance_of described_class
  end

  it 'exposes attributes' do
    expect(described_class.from_json(json)).to respond_to(:attributes)
  end
end
