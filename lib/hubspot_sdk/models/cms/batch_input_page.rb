# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputPage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   Pages to input.
        #
        #   @return [Array<HubspotSDK::Models::Cms::CmsPage>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::CmsPage] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::CmsPage>] Pages to input.
      end
    end
  end
end
