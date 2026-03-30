# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Tags
          # @see HubspotSDK::Resources::Cms::Blogs::Tags::Batch#create_batch
          class BatchCreateBatchParams < HubspotSDK::Models::Cms::Blogs::BatchInputTag
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
