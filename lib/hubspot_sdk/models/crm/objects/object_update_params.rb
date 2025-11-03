# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::Objects#update
        class ObjectUpdateParams < HubspotSDK::Models::Crm::SimplePublicObjectInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(object_type:, id_property: nil, request_options: {})
          #   @param object_type [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
