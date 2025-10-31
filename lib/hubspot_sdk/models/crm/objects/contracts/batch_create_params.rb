# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        module Contracts
          # @see HubspotSDK::Resources::CRM::Objects::Contracts::Batch#create
          class BatchCreateParams < HubspotSDK::Models::CRM::BatchInputSimplePublicObjectBatchInputForCreate
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
