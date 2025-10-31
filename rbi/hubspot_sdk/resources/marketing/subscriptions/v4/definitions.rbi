# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Subscriptions
        class V4
          class Definitions
            # Get a list of subscription status definitions from the account.
            sig do
              params(
                business_unit_id: Integer,
                include_translations: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition
              )
            end
            def list(
              # If you have the
              # [business unit add-on](https://developers.hubspot.com/beta-docs/guides/api/settings/business-units-api),
              # include this parameter to filter results by business unit ID. The default
              # Account business unit will always use `0`.
              business_unit_id: nil,
              # Set to `true` to return subscription translations associated with each
              # definition.
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
  end
end
