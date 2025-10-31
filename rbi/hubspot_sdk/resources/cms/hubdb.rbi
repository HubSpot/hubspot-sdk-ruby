# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        sig { returns(HubspotSDK::Resources::Cms::Hubdb::Rows) }
        attr_reader :rows

        sig { returns(HubspotSDK::Resources::Cms::Hubdb::Tables) }
        attr_reader :tables

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
