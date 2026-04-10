# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Files
      # @return [HubSpotSDK::Resources::Files::FileAssets]
      attr_reader :file_assets

      # @return [HubSpotSDK::Resources::Files::Folders]
      attr_reader :folders

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @file_assets = HubSpotSDK::Resources::Files::FileAssets.new(client: client)
        @folders = HubSpotSDK::Resources::Files::Folders.new(client: client)
      end
    end
  end
end
