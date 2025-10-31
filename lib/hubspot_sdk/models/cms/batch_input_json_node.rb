# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputJsonNode < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   JSON nodes to input.
        #
        #   @return [Array<Object>]
        required :inputs, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!method initialize(inputs:)
        #   Wrapper for providing an array of JSON nodes as inputs.
        #
        #   @param inputs [Array<Object>] JSON nodes to input.
      end
    end
  end
end
