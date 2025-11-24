# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardObjectTypeBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute name
          #   A CRM object type where this card should be displayed.
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody::Name]
          required :name, enum: -> { HubspotSDK::Crm::Extensions::CardObjectTypeBody::Name }

          # @!attribute properties_to_send
          #   An array of properties that should be sent to this card's target URL when the
          #   data fetch request is made. Must be valid properties for the corresponding CRM
          #   object type.
          #
          #   @return [Array<String>]
          required :properties_to_send,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :propertiesToSend

          # @!method initialize(name:, properties_to_send:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody} for more details.
          #
          #   @param name [Symbol, HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody::Name] A CRM object type where this card should be displayed.
          #
          #   @param properties_to_send [Array<String>] An array of properties that should be sent to this card's target URL when the da

          # A CRM object type where this card should be displayed.
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody#name
          module Name
            extend HubspotSDK::Internal::Type::Enum

            COMPANIES = :companies
            CONTACTS = :contacts
            DEALS = :deals
            MARKETING_EVENTS = :marketing_events
            TICKETS = :tickets

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
