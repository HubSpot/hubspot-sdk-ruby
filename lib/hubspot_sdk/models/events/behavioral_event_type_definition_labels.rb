# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class BehavioralEventTypeDefinitionLabels < HubspotSDK::Internal::Type::BaseModel
        # @!attribute singular
        #
        #   @return [String]
        required :singular, String

        # @!attribute plural
        #
        #   @return [String, nil]
        optional :plural, String

        # @!method initialize(singular:, plural: nil)
        #   @param singular [String]
        #   @param plural [String]
      end
    end
  end
end
