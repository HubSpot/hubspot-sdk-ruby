# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        sig { returns(HubspotSDK::Resources::Crm::Objects::Contacts) }
        attr_reader :contacts

        sig { returns(HubspotSDK::Resources::Crm::Objects::Custom) }
        attr_reader :custom

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
