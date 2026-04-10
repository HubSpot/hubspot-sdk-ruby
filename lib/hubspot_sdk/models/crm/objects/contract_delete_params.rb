# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Contracts#delete
        class ContractDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute contract_id
          #
          #   @return [String]
          required :contract_id, String

          # @!method initialize(contract_id:, request_options: {})
          #   @param contract_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
