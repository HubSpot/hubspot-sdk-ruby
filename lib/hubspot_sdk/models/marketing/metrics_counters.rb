# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MetricsCounters < HubspotSDK::Internal::Type::BaseModel
        # @!attribute influenced_contacts
        #
        #   @return [Integer]
        required :influenced_contacts, Integer, api_name: :influencedContacts

        # @!attribute new_contacts_first_touch
        #
        #   @return [Integer]
        required :new_contacts_first_touch, Integer, api_name: :newContactsFirstTouch

        # @!attribute new_contacts_last_touch
        #
        #   @return [Integer]
        required :new_contacts_last_touch, Integer, api_name: :newContactsLastTouch

        # @!attribute sessions
        #
        #   @return [Integer]
        required :sessions, Integer

        # @!method initialize(influenced_contacts:, new_contacts_first_touch:, new_contacts_last_touch:, sessions:)
        #   @param influenced_contacts [Integer]
        #   @param new_contacts_first_touch [Integer]
        #   @param new_contacts_last_touch [Integer]
        #   @param sessions [Integer]
      end
    end
  end
end
