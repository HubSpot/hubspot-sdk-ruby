# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Hubdb
        sig { returns(HubSpotSDK::Resources::Cms::Hubdb::Rows) }
        attr_reader :rows

        sig { returns(HubSpotSDK::Resources::Cms::Hubdb::Tables) }
        attr_reader :tables

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
