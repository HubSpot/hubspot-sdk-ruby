# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          # @return [HubspotSDK::Resources::Marketing::Subscriptions::V4::Definitions]
          attr_reader :definitions

          # @return [HubspotSDK::Resources::Marketing::Subscriptions::V4::Links]
          attr_reader :links

          # @return [HubspotSDK::Resources::Marketing::Subscriptions::V4::Statuses]
          attr_reader :statuses

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @definitions = HubspotSDK::Resources::Marketing::Subscriptions::V4::Definitions.new(client: client)
            @links = HubspotSDK::Resources::Marketing::Subscriptions::V4::Links.new(client: client)
            @statuses = HubspotSDK::Resources::Marketing::Subscriptions::V4::Statuses.new(client: client)
          end
        end
      end
    end
  end
end
