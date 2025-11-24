# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SiteSearch#get_indexed_data
      class SiteSearchGetIndexedDataParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute type
        #   The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
        #   `KNOWLEDGE_ARTICLE`.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams::Type, nil]
        optional :type, enum: -> { HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type }

        # @!method initialize(type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams} for more details.
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::SiteSearchGetIndexedDataParams::Type] The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or `KNOWLEDGE_ARTI
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        # The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
        # `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          BLOG_POST = :BLOG_POST
          KNOWLEDGE_ARTICLE = :KNOWLEDGE_ARTICLE
          LANDING_PAGE = :LANDING_PAGE
          LISTING_PAGE = :LISTING_PAGE
          SITE_PAGE = :SITE_PAGE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
