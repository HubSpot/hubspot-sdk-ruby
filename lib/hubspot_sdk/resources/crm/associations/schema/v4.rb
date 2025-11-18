# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class Schema
          class V4
            # @return [HubspotSDK::Resources::Crm::Associations::Schema::V4::Configurations]
            attr_reader :configurations

            # @return [HubspotSDK::Resources::Crm::Associations::Schema::V4::Definitions]
            attr_reader :definitions

            # @api private
            #
            # @param client [HubspotSDK::Client]
            def initialize(client:)
              @client = client
              @configurations =
                HubspotSDK::Resources::Crm::Associations::Schema::V4::Configurations.new(client: client)
              @definitions = HubspotSDK::Resources::Crm::Associations::Schema::V4::Definitions.new(client: client)
            end
          end
        end
      end
    end
  end
end
