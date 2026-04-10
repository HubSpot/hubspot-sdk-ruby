# frozen_string_literal: true

module HubSpotSDK
  module Models
    class BatchInputString < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute inputs
      #   Strings to input.
      #
      #   @return [Array<String>]
      required :inputs, HubSpotSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(inputs:)
      #   @param inputs [Array<String>] Strings to input.
    end
  end
end
