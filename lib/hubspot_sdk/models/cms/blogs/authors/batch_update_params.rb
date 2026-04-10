# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        module Authors
          # @see HubSpotSDK::Resources::Cms::Blogs::Authors::Batch#update
          class BatchUpdateParams < HubSpotSDK::Models::Cms::BatchInputJsonNode
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!attribute archived
            #   Whether to return only results that have been archived.
            #
            #   @return [Boolean, nil]
            optional :archived, HubSpotSDK::Internal::Type::Boolean

            # @!method initialize(archived: nil, request_options: {})
            #   @param archived [Boolean] Whether to return only results that have been archived.
            #
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
