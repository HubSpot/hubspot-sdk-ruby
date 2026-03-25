# typed: strong

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Definitions
        # Get a list of subscription status definitions from the account.
        sig do
          params(
            business_unit_id: Integer,
            include_translations: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::CommunicationPreferences::ActionResponseWithResultsSubscriptionDefinition
          )
        end
        def list(
          # The unique identifier of the business unit for which to retrieve the
          # subscription definitions.
          business_unit_id: nil,
          # A boolean indicating whether to include translations of the subscription
          # definitions. Defaults to false if not specified.
          include_translations: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
