# frozen_string_literal: true

module OneSignal
  module AutoMap
    def create_readers **attributes
      attributes.map do |attribute, value|
        instance_variable_set :"@#{attribute}", value

        self.singleton_class.class_eval { attr_reader attribute }
      end
    end
  end
end
