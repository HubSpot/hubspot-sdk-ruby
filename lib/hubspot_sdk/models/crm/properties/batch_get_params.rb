# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Properties
        # @see HubSpotSDK::Resources::Crm::Properties::Batch#get
        class BatchGetParams < HubSpotSDK::Models::BatchReadInputPropertyName
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute locale
          #
          #   @return [String, nil]
          optional :locale, String

          # @!method initialize(object_type:, locale: nil, request_options: {})
          #   @param object_type [String]
          #   @param locale [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
