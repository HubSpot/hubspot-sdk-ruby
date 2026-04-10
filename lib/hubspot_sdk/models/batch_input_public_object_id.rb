# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BatchInputPublicObjectID < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #   An array of deal split inputs
      #
      #   @return [Array<HubSpotSDK::Models::PublicObjectID>]
      required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PublicObjectID] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubSpotSDK::Models::PublicObjectID>] An array of deal split inputs
    end
  end
end
