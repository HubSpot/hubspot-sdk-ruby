# typed: strong

module HubspotSDK
  module Resources
    class Files
      sig { returns(HubspotSDK::Resources::Files::FileOperations) }
      attr_reader :file_operations

      sig { returns(HubspotSDK::Resources::Files::Folders) }
      attr_reader :folders

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
