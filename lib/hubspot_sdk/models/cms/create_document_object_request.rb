# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CreateDocumentObjectRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute media_type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::CreateDocumentObjectRequest::MediaType]
        required :media_type,
                 enum: -> { HubspotSDK::Cms::CreateDocumentObjectRequest::MediaType },
                 api_name: :mediaType

        # @!attribute title
        #
        #   @return [String]
        required :title, String

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

        # @!method initialize(media_type:, title:, details_page_link: nil, duration: nil, external_id: nil, file_url: nil, oembed_url: nil, poster_url: nil, thumbnail_url: nil)
        #   @param media_type [Symbol, HubspotSDK::Models::Cms::CreateDocumentObjectRequest::MediaType]
        #   @param title [String]
        #   @param details_page_link [String]
        #   @param duration [Integer]
        #   @param external_id [String]
        #   @param file_url [String]
        #   @param oembed_url [String]
        #   @param poster_url [String]
        #   @param thumbnail_url [String]

        # @see HubspotSDK::Models::Cms::CreateDocumentObjectRequest#media_type
        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          DOCUMENT = :DOCUMENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
