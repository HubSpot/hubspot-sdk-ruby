# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CaseChangeTestExtensionData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute mood
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::CaseChangeTestExtensionData::Mood]
        required :mood, enum: -> { HubSpotSDK::Cms::CaseChangeTestExtensionData::Mood }

        # @!method initialize(mood:)
        #   @param mood [Symbol, HubSpotSDK::Models::Cms::CaseChangeTestExtensionData::Mood]

        # @see HubSpotSDK::Models::Cms::CaseChangeTestExtensionData#mood
        module Mood
          extend HubSpotSDK::Internal::Type::Enum

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
