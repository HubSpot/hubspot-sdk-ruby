# frozen_string_literal: true

module HubspotSDK
  module Resources
    class DataStudio
      # @return [HubspotSDK::Resources::DataStudio::Datasource]
      attr_reader :datasource

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @datasource = HubspotSDK::Resources::DataStudio::Datasource.new(client: client)
      end
    end
  end
end
