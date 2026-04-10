# typed: strong

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        sig do
          returns(
            HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch
          )
        end
        attr_reader :batch

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
