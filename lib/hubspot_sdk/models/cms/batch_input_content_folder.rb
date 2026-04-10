# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputContentFolder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   Content folders to input.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ContentFolder>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::ContentFolder>] Content folders to input.
      end
    end
  end
end
