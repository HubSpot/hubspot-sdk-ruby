# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        # @see HubspotSDK::Resources::CRM::Extensions::Cards#list
        class CardListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
