# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ParticipationAssociations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact
        #
        #   @return [HubspotSDK::Models::Marketing::ContactAssociation]
        required :contact, -> { HubspotSDK::Marketing::ContactAssociation }

        # @!attribute marketing_event
        #
        #   @return [HubspotSDK::Models::Marketing::MarketingEventAssociation]
        required :marketing_event,
                 -> { HubspotSDK::Marketing::MarketingEventAssociation },
                 api_name: :marketingEvent

        # @!method initialize(contact:, marketing_event:)
        #   @param contact [HubspotSDK::Models::Marketing::ContactAssociation]
        #   @param marketing_event [HubspotSDK::Models::Marketing::MarketingEventAssociation]
      end
    end
  end
end
