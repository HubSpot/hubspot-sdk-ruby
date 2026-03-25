# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module ObjectSchemas
        # @see HubspotSDK::Resources::Crm::ObjectSchemas::Batch#get
        class BatchGetParams < HubspotSDK::Models::Crm::ObjectSchemaBatchReadRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
