# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Imports#cancel
      class ImportCancelParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute import_id
        #
        #   @return [Integer]
        required :import_id, Integer

        # @!method initialize(import_id:, request_options: {})
        #   @param import_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
