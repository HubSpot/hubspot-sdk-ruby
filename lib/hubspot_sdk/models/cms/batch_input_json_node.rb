# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputJsonNode < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   JSON nodes to input.
        #
        #   @return [Array<Object>]
        required :inputs, HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]

        # @!method initialize(inputs:)
        #   @param inputs [Array<Object>] JSON nodes to input.
      end
    end
  end
end
