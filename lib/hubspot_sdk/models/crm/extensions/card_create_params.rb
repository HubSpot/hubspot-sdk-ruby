# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        # @see HubspotSDK::Resources::CRM::Extensions::Cards#create
        class CardCreateParams < HubspotSDK::Models::CRM::Extensions::CardCreateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
