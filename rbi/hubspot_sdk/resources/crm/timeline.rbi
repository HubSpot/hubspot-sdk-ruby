# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        sig { returns(HubspotSDK::Resources::Crm::Timeline::Events) }
        attr_reader :events

        sig { returns(HubspotSDK::Resources::Crm::Timeline::Templates) }
        attr_reader :templates

        sig { returns(HubspotSDK::Resources::Crm::Timeline::Tokens) }
        attr_reader :tokens

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
