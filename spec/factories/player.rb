# frozen_string_literal: true

FactoryBot.define do
  factory :player, class: OneSignal::Player do
    device_type { 1 }

    initialize_with { new(attributes) }
  end
end
