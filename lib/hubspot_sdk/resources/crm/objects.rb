# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        # @return [HubspotSDK::Resources::Crm::Objects::Contacts]
        attr_reader :contacts

        # @return [HubspotSDK::Resources::Crm::Objects::Custom]
        attr_reader :custom

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @contacts = HubspotSDK::Resources::Crm::Objects::Contacts.new(client: client)
          @custom = HubspotSDK::Resources::Crm::Objects::Custom.new(client: client)
        end
      end
    end
  end
end
