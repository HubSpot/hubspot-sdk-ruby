# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#create_media_played_event
      class MediaBridgeCreateMediaPlayedEventParams < HubspotSDK::Models::Cms::MediaPlayedEventRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
