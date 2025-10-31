# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class ObjectLibrary
        sig { returns(HubspotSDK::Resources::CRM::ObjectLibrary::Enablement) }
        attr_reader :enablement

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
