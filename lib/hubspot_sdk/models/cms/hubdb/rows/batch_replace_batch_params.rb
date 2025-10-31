# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        module Rows
          # @see HubspotSDK::Resources::Cms::Hubdb::Rows::Batch#replace_batch
          class BatchReplaceBatchParams < HubspotSDK::Models::Cms::BatchInputHubDBTableRowV3BatchUpdateRequest
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
