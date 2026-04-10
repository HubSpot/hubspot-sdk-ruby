# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BatchInputPropertyName < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #
      #   @return [Array<HubSpotSDK::Models::PropertyName>]
      required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyName] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubSpotSDK::Models::PropertyName>]
    end
  end
end
