# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::PartnerServices#update
        class PartnerServiceUpdateParams < HubSpotSDK::Models::Crm::SimplePublicObjectInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute partner_service_id
          #
          #   @return [String]
          required :partner_service_id, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(partner_service_id:, id_property: nil, request_options: {})
          #   @param partner_service_id [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
