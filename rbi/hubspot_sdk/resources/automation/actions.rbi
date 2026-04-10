# typed: strong

module HubSpotSDK
  module Resources
    class Automation
      class Actions
        sig { returns(HubSpotSDK::Resources::Automation::Actions::Callbacks) }
        attr_reader :callbacks

        sig { returns(HubSpotSDK::Resources::Automation::Actions::Definitions) }
        attr_reader :definitions

        sig { returns(HubSpotSDK::Resources::Automation::Actions::Functions) }
        attr_reader :functions

        sig { returns(HubSpotSDK::Resources::Automation::Actions::Revisions) }
        attr_reader :revisions

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
