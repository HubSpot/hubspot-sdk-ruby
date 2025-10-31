# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Tags#update_batch
        class TagUpdateBatchParams < HubspotSDK::Models::Cms::BatchInputJsonNode
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Specifies whether to update deleted Blog Tags. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(archived: nil, request_options: {})
          #   @param archived [Boolean] Specifies whether to update deleted Blog Tags. Defaults to `false`.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
