# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Tags#get
        class TagGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute property
          #
          #   @return [String, nil]
          optional :property, String

          # @!method initialize(archived: nil, property: nil, request_options: {})
          #   @param archived [Boolean] Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          #   @param property [String]
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
