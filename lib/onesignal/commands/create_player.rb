# frozen_string_literal: true

module OneSignal
  module Commands
    class CreatePlayer < BaseCommand
      def initialize player
        @player = player
      end

      def call
        client.create_player @player
      end
    end
  end
end
