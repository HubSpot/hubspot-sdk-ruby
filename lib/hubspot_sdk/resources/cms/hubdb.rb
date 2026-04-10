# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Hubdb
        # @return [HubSpotSDK::Resources::Cms::Hubdb::Rows]
        attr_reader :rows

        # @return [HubSpotSDK::Resources::Cms::Hubdb::Tables]
        attr_reader :tables

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @rows = HubSpotSDK::Resources::Cms::Hubdb::Rows.new(client: client)
          @tables = HubSpotSDK::Resources::Cms::Hubdb::Tables.new(client: client)
        end
      end
    end
  end
end
