# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CaseChangeTestExtensionData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute mood
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::CaseChangeTestExtensionData::Mood]
        required :mood, enum: -> { HubspotSDK::Cms::CaseChangeTestExtensionData::Mood }

        # @!method initialize(mood:)
        #   @param mood [Symbol, HubspotSDK::Models::Cms::CaseChangeTestExtensionData::Mood]

        # @see HubspotSDK::Models::Cms::CaseChangeTestExtensionData#mood
        module Mood
          extend HubspotSDK::Internal::Type::Enum

          ANGRY = :ANGRY
          HAPPY = :HAPPY
          SAD = :SAD
          SARCASTIC = :SARCASTIC

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
