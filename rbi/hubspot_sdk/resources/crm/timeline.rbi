# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Timeline
        sig { returns(HubspotSDK::Resources::CRM::Timeline::Events) }
        attr_reader :events

        sig { returns(HubspotSDK::Resources::CRM::Timeline::Templates) }
        attr_reader :templates

        sig { returns(HubspotSDK::Resources::CRM::Timeline::Tokens) }
        attr_reader :tokens

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
