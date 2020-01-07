# frozen_string_literal: true

module OneSignal
  class Player
    attr_reader :device_type

    def initialize **params
      puts params.inspect
      unless params.include?(:device_type)
        raise ArgumentError, 'missing device_type'
      end

      @device_type = params[:device_type]
    end

    def as_json options = nil
      {
        'device_type' => @device_type
      }
    end
  end
end
