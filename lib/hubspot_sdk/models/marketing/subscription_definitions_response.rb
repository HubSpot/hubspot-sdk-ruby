# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Subscriptions#list
      class SubscriptionDefinitionsResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute subscription_definitions
        #   A list of all subscription definitions.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::SubscriptionDefinition>]
        required :subscription_definitions,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriptionDefinition] },
                 api_name: :subscriptionDefinitions

        # @!method initialize(subscription_definitions:)
        #   @param subscription_definitions [Array<HubspotSDK::Models::Marketing::SubscriptionDefinition>] A list of all subscription definitions.
      end
    end
  end
end
