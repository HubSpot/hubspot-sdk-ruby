# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputPropertyCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::PropertyCreate>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::PropertyCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::PropertyCreate>]
      end
    end
  end
end
