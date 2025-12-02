# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      # @return [HubspotSDK::Resources::Files::FileOperations]
      attr_reader :file_operations

      # @return [HubspotSDK::Resources::Files::Folders]
      attr_reader :folders

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @file_operations = HubspotSDK::Resources::Files::FileOperations.new(client: client)
        @folders = HubspotSDK::Resources::Files::Folders.new(client: client)
      end
    end
  end
end
