# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module CommercePayments
          # @see HubspotSDK::Resources::CRM::Objects::CommercePayments::Batch#upsert
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
