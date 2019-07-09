# frozen_string_literal: true

module OneSignal
  class Buttons
    attr_reader :buttons, :web_buttons, :ios_category

    def initialize params
      @buttons            = params[:buttons]
      @web_buttons        = params[:web_buttons]
      @ios_category       = params[:ios_category]
    end

    def as_json options = nil
      {
        'buttons'         => buttons,
        'web_buttons'     => web_buttons,
        'ios_category'    => ios_category,
      }
    end
  end
end
