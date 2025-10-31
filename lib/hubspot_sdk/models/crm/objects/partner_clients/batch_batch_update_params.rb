# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module PartnerClients
          # @see HubspotSDK::Resources::CRM::Objects::PartnerClients::Batch#batch_update
          class BatchBatchUpdateParams < HubspotSDK::Models::CRM::BatchInputSimplePublicObjectBatchInput
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
