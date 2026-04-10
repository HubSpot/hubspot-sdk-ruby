# typed: strong

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Definitions
        # Get a list of subscription status definitions from the account.
        sig do
          params(
            business_unit_id: Integer,
            include_translations: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition
          )
        end
        def list(
          business_unit_id: nil,
          include_translations: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
