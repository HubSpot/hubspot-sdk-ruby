# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        # @return [HubSpotSDK::Resources::Automation::Actions::Callbacks]
        attr_reader :callbacks

        # @return [HubSpotSDK::Resources::Automation::Actions::Definitions]
        attr_reader :definitions

        # @return [HubSpotSDK::Resources::Automation::Actions::Functions]
        attr_reader :functions

        # @return [HubSpotSDK::Resources::Automation::Actions::Revisions]
        attr_reader :revisions

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @callbacks = HubSpotSDK::Resources::Automation::Actions::Callbacks.new(client: client)
          @definitions = HubSpotSDK::Resources::Automation::Actions::Definitions.new(client: client)
          @functions = HubSpotSDK::Resources::Automation::Actions::Functions.new(client: client)
          @revisions = HubSpotSDK::Resources::Automation::Actions::Revisions.new(client: client)
        end
      end
    end
  end
end
