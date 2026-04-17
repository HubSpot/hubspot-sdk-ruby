# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #
      #   @return [Array<HubSpotSDK::Models::PropertyCreate>]
      required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyCreate] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubSpotSDK::Models::PropertyCreate>]
    end
  end
end
