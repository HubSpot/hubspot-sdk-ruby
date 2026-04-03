# typed: strong

module HubspotSDK
  module Resources
    class Files
      sig { returns(HubspotSDK::Resources::Files::FileAssets) }
      attr_reader :file_assets

      sig { returns(HubspotSDK::Resources::Files::Folders) }
      attr_reader :folders

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
