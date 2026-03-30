# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputPage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   Pages to input.
        #
        #   @return [Array<HubspotSDK::Models::Cms::Page>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Page] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::Page>] Pages to input.
      end
    end
  end
end
