# frozen_string_literal: true

module HubspotSDK
  module Models
    class BatchInputPropertyName < HubspotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #
      #   @return [Array<HubspotSDK::Models::PropertyName>]
      required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyName] }

      # @!method initialize(inputs:)
      #   @param inputs [Array<HubspotSDK::Models::PropertyName>]
    end
  end
end
