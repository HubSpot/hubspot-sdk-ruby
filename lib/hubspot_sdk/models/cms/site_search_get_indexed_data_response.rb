# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SiteSearch#get_indexed_data
      class SiteSearchGetIndexedDataResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the document in HubSpot.
        #
        #   @return [String]
        required :id, String

        # @!attribute fields
        #   The indexed fields in HubSpot.
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field}]
        required :fields,
                 -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field] }

        # @!attribute type
        #   The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        #   `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type]
        required :type, enum: -> { HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type }

        # @!method initialize(id:, fields:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse} for more details.
        #
        #   The indexed data in HubSpot
        #
        #   @param id [String] The ID of the document in HubSpot.
        #
        #   @param fields [Hash{Symbol=>HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field}] The indexed fields in HubSpot.
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type] The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        #   `LISTING\_

        class Field < HubspotSDK::Internal::Type::BaseModel
          # @!attribute metadata_field
          #
          #   @return [Boolean]
          required :metadata_field, HubspotSDK::Internal::Type::Boolean, api_name: :metadataField

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute value
          #
          #   @return [Object]
          required :value, HubspotSDK::Internal::Type::Unknown

          # @!attribute values
          #
          #   @return [Array<Object>]
          required :values, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

          # @!method initialize(metadata_field:, name:, value:, values:)
          #   @param metadata_field [Boolean]
          #   @param name [String]
          #   @param value [Object]
          #   @param values [Array<Object>]
        end

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        #
        # @see HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LANDING_PAGE = :LANDING_PAGE
          BLOG_POST = :BLOG_POST
          SITE_PAGE = :SITE_PAGE
          KNOWLEDGE_ARTICLE = :KNOWLEDGE_ARTICLE
          LISTING_PAGE = :LISTING_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
