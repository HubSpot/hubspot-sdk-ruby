# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Users
        # @see HubspotSDK::Resources::CRM::Users::Batch#create
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
