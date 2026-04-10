# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class ParticipationAssociations < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute contact
        #
        #   @return [HubSpotSDK::Models::Marketing::ContactAssociation]
        required :contact, -> { HubSpotSDK::Marketing::ContactAssociation }

        # @!attribute marketing_event
        #
        #   @return [HubSpotSDK::Models::Marketing::MarketingEventAssociation]
        required :marketing_event,
                 -> { HubSpotSDK::Marketing::MarketingEventAssociation },
                 api_name: :marketingEvent

        # @!method initialize(contact:, marketing_event:)
        #   @param contact [HubSpotSDK::Models::Marketing::ContactAssociation]
        #   @param marketing_event [HubSpotSDK::Models::Marketing::MarketingEventAssociation]
      end
    end
  end
end
