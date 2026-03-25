# typed: strong

module HubspotSDK
  module Resources
    class Cms
      sig { returns(HubspotSDK::Resources::Cms::Blogs) }
      attr_reader :blogs

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
