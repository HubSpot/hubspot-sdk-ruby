# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module CreateMBObjectRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Cms::CreateVideoObjectRequest }

        variant -> { HubspotSDK::Cms::CreateOtherObjectRequest }

        variant -> { HubspotSDK::Cms::CreateAudioObjectRequest }

        variant -> { HubspotSDK::Cms::CreateImageObjectRequest }

        variant -> { HubspotSDK::Cms::CreateDocumentObjectRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Cms::CreateVideoObjectRequest, HubspotSDK::Models::Cms::CreateOtherObjectRequest, HubspotSDK::Models::Cms::CreateAudioObjectRequest, HubspotSDK::Models::Cms::CreateImageObjectRequest, HubspotSDK::Models::Cms::CreateDocumentObjectRequest)]
      end
    end
  end
end
