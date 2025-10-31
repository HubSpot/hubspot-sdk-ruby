# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubspotSDK::Resources::Cms::Blogs::Posts::Batch#update
          class BatchUpdateParams < HubspotSDK::Models::Cms::BatchInputJsonNode
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute archived
            #   Specifies whether to update deleted Blog Posts. Defaults to `false`.
            #
            #   @return [Boolean, nil]
            optional :archived, HubspotSDK::Internal::Type::Boolean

            # @!method initialize(archived: nil, request_options: {})
            #   @param archived [Boolean] Specifies whether to update deleted Blog Posts. Defaults to `false`.
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
