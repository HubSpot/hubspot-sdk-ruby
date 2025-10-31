# frozen_string_literal: true

module HubspotSDK
  module Models
    class BatchInputPropertyCreate < HubspotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #
      #   @return [Array<HubspotSDK::Models::PropertyCreate>]
      required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyCreate] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubspotSDK::Models::PropertyCreate>]
    end
  end
end
