# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Communications
          # @see HubSpotSDK::Resources::Crm::Objects::Communications::Batch#upsert
          class BatchUpsertParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputUpsert
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
