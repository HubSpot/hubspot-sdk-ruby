# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::PartnerClients#update
        class PartnerClientUpdateParams < HubspotSDK::Models::Crm::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute partner_client_id
          #
          #   @return [String]
          required :partner_client_id, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(partner_client_id:, id_property: nil, request_options: {})
          #   @param partner_client_id [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
