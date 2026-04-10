# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PropertyCreate>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PropertyCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::PropertyCreate>]
      end
    end
  end
end
