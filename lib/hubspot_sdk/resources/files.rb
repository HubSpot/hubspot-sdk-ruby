# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      # @return [HubspotSDK::Resources::Files::FileAssets]
      attr_reader :file_assets

      # @return [HubspotSDK::Resources::Files::Folders]
      attr_reader :folders

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @file_assets = HubspotSDK::Resources::Files::FileAssets.new(client: client)
        @folders = HubspotSDK::Resources::Files::Folders.new(client: client)
      end
    end
  end
end
