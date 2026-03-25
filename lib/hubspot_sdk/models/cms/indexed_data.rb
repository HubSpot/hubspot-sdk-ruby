# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SiteSearch#get_indexed_data
      class IndexedData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the document in HubSpot.
        #
        #   @return [String]
        required :id, String

        # @!attribute fields
        #   The indexed fields in HubSpot.
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::IndexedField}]
        required :fields, -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::IndexedField] }

        # @!attribute type
        #   The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        #   `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::IndexedData::Type]
        required :type, enum: -> { HubspotSDK::Cms::IndexedData::Type }

        # @!method initialize(id:, fields:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::IndexedData} for more details.
        #
        #   @param id [String] The ID of the document in HubSpot.
        #
        #   @param fields [Hash{Symbol=>HubspotSDK::Models::Cms::IndexedField}] The indexed fields in HubSpot.
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::IndexedData::Type] The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        #   `LISTING\_

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        #
        # @see HubspotSDK::Models::Cms::IndexedData#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BLOG_POST = :BLOG_POST
          KNOWLEDGE_ARTICLE = :KNOWLEDGE_ARTICLE
          LANDING_PAGE = :LANDING_PAGE
          LISTING_PAGE = :LISTING_PAGE
          SITE_PAGE = :SITE_PAGE
          STRUCTURED_CONTENT = :STRUCTURED_CONTENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
