# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module Appointments
          # @see HubspotSDK::Resources::CRM::Objects::Appointments::Batch#upsert
          class BatchUpsertParams < HubspotSDK::Models::CRM::BatchInputSimplePublicObjectBatchInputUpsert
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
