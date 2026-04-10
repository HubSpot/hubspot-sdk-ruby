# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputPage < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   Pages to input.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PageData>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::PageData>] Pages to input.
      end
    end
  end
end
