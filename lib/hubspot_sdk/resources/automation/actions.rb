# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Actions
        # @return [HubspotSDK::Resources::Automation::Actions::Callbacks]
        attr_reader :callbacks

        # @return [HubspotSDK::Resources::Automation::Actions::Definitions]
        attr_reader :definitions

        # @return [HubspotSDK::Resources::Automation::Actions::Functions]
        attr_reader :functions

        # @return [HubspotSDK::Resources::Automation::Actions::Revisions]
        attr_reader :revisions

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @callbacks = HubspotSDK::Resources::Automation::Actions::Callbacks.new(client: client)
          @definitions = HubspotSDK::Resources::Automation::Actions::Definitions.new(client: client)
          @functions = HubspotSDK::Resources::Automation::Actions::Functions.new(client: client)
          @revisions = HubspotSDK::Resources::Automation::Actions::Revisions.new(client: client)
        end
      end
    end
  end
end
