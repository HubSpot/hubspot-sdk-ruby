# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class UpdateVideoObjectRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::UpdateVideoObjectRequest::MediaType]
        required :media_type,
                 enum: -> { HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType },
                 api_name: :mediaType

        # @!attribute bearer_token
        #
        #   @return [String, nil]
        optional :bearer_token, String, api_name: :bearerToken

        # @!attribute details_page_link
        #
        #   @return [String, nil]
        optional :details_page_link, String, api_name: :detailsPageLink

        # @!attribute duration
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute external_id
        #
        #   @return [String, nil]
        optional :external_id, String, api_name: :externalId

        # @!attribute file_url
        #
        #   @return [String, nil]
        optional :file_url, String, api_name: :fileUrl

        # @!attribute oembed_url
        #
        #   @return [String, nil]
        optional :oembed_url, String, api_name: :oembedUrl

        # @!attribute poster_url
        #
        #   @return [String, nil]
        optional :poster_url, String, api_name: :posterUrl

        # @!attribute thumbnail_url
        #
        #   @return [String, nil]
        optional :thumbnail_url, String, api_name: :thumbnailUrl

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!attribute transcript_url
        #
        #   @return [String, nil]
        optional :transcript_url, String, api_name: :transcriptUrl

        # @!method initialize(media_type:, bearer_token: nil, details_page_link: nil, duration: nil, external_id: nil, file_url: nil, oembed_url: nil, poster_url: nil, thumbnail_url: nil, title: nil, transcript_url: nil)
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::UpdateVideoObjectRequest::MediaType]
        #   @param bearer_token [String]
        #   @param details_page_link [String]
        #   @param duration [Integer]
        #   @param external_id [String]
        #   @param file_url [String]
        #   @param oembed_url [String]
        #   @param poster_url [String]
        #   @param thumbnail_url [String]
        #   @param title [String]
        #   @param transcript_url [String]

        # @see HubspotSDK::Models::Cms::UpdateVideoObjectRequest#media_type
        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          VIDEO = :VIDEO

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
