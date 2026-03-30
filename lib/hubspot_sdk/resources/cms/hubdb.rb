# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        # @return [HubspotSDK::Resources::Cms::Hubdb::Rows]
        attr_reader :rows

        # @return [HubspotSDK::Resources::Cms::Hubdb::Tables]
        attr_reader :tables

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @rows = HubspotSDK::Resources::Cms::Hubdb::Rows.new(client: client)
          @tables = HubspotSDK::Resources::Cms::Hubdb::Tables.new(client: client)
        end
      end
    end
  end
end
