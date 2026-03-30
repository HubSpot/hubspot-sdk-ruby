# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Tags
          # @see HubspotSDK::Resources::Cms::Blogs::Tags::Batch#delete
          class BatchDeleteParams < HubspotSDK::Models::BatchInputString
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
