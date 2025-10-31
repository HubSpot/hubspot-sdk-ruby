# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        sig { returns(HubspotSDK::Resources::Automation::Actions::Callbacks) }
        attr_reader :callbacks

        sig { returns(HubspotSDK::Resources::Automation::Actions::Definitions) }
        attr_reader :definitions

        sig { returns(HubspotSDK::Resources::Automation::Actions::Functions) }
        attr_reader :functions

        sig { returns(HubspotSDK::Resources::Automation::Actions::Revisions) }
        attr_reader :revisions

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
