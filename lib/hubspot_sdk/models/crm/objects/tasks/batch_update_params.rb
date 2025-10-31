# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module Tasks
          # @see HubspotSDK::Resources::CRM::Objects::Tasks::Batch#update
          class BatchUpdateParams < HubspotSDK::Models::CRM::BatchInputSimplePublicObjectBatchInput
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
