# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputContentFolder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   Content folders to input.
        #
        #   @return [Array<HubspotSDK::Models::Cms::ContentFolder>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder] }

        # @!method initialize(inputs:)
        #   Wrapper for providing an array of content folders as inputs.
        #
        #   @param inputs [Array<HubspotSDK::Models::Cms::ContentFolder>] Content folders to input.
      end
    end
  end
end
