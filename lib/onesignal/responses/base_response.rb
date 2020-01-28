# frozen_string_literal: true

module OneSignal
  module Responses
    class BaseResponse
      attr_reader :attributes

      def initialize attributes = {}
        @attributes = attributes.deep_symbolize_keys
                                .keep_if { |k, _v| self.class::ATTRIBUTES_WHITELIST.include?(k.to_sym) }
        self.class.mattr_reader(*self.class::ATTRIBUTES_WHITELIST)
      end
    end
  end
end
