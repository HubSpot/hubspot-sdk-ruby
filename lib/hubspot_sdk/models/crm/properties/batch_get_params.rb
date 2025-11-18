# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Properties
        # @see HubspotSDK::Resources::Crm::Properties::Batch#get
        class BatchGetParams < HubspotSDK::Models::BatchReadInputPropertyName
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute locale
          #
          #   @return [String, nil]
          optional :locale, String

          # @!method initialize(locale: nil, request_options: {})
          #   @param locale [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
