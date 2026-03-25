# frozen_string_literal: true

module HubspotSDK
  module Models
    class BatchInputPublicObjectID < HubspotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #   An array of deal split inputs
      #
      #   @return [Array<HubspotSDK::Models::PublicObjectID>]
      required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PublicObjectID] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubspotSDK::Models::PublicObjectID>] An array of deal split inputs
    end
  end
end
