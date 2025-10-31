# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::Carts#update
        class CartUpdateParams < HubspotSDK::Models::CRM::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute id_property
          #   The name of a property whose values are unique for this object
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(id_property: nil, request_options: {})
          #   @param id_property [String] The name of a property whose values are unique for this object
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
