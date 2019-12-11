# frozen_string_literal: true

FactoryBot.define do
  factory :sounds, class: OneSignal::Appearances::Sounds do
    ios { 'test.wav' }
    windows { 'test.wav' }
    android { 'test' }
    amazon { 'test' }

    initialize_with { new(attributes) }
  end
end
