# typed: strong

module HubSpotSDK
  module Resources
    class Files
      sig { returns(HubSpotSDK::Resources::Files::FileAssets) }
      attr_reader :file_assets

      sig { returns(HubSpotSDK::Resources::Files::Folders) }
      attr_reader :folders

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
