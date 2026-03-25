# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module UpdateMBObjectRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Cms::UpdateVideoObjectRequest }

        variant -> { HubspotSDK::Cms::UpdateOtherObjectRequest }

        variant -> { HubspotSDK::Cms::UpdateAudioObjectRequest }

        variant -> { HubspotSDK::Cms::UpdateImageObjectRequest }

        variant -> { HubspotSDK::Cms::UpdateDocumentObjectRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Cms::UpdateVideoObjectRequest, HubspotSDK::Models::Cms::UpdateOtherObjectRequest, HubspotSDK::Models::Cms::UpdateAudioObjectRequest, HubspotSDK::Models::Cms::UpdateImageObjectRequest, HubspotSDK::Models::Cms::UpdateDocumentObjectRequest)]
      end
    end
  end
end
