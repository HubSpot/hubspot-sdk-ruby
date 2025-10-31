# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Posts#get
        class PostGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Specifies whether to return deleted blog posts. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute property
          #   Specific properties to return.
          #
          #   @return [String, nil]
          optional :property, String

          # @!method initialize(archived: nil, property: nil, request_options: {})
          #   @param archived [Boolean] Specifies whether to return deleted blog posts. Defaults to `false`.
          #
          #   @param property [String] Specific properties to return.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
