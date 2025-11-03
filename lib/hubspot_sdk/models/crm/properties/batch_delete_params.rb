# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Properties
        # @see HubspotSDK::Resources::Crm::Properties::Batch#delete
        class BatchDeleteParams < HubspotSDK::Models::BatchInputPropertyName
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
