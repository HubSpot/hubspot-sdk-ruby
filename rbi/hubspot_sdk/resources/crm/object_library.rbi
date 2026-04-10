# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class ObjectLibrary
        sig { returns(HubSpotSDK::Resources::Crm::ObjectLibrary::Enablement) }
        attr_reader :enablement

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
