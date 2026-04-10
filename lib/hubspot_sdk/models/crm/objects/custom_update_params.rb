# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::Custom#update
        class CustomUpdateParams < HubSpotSDK::Models::Crm::SimplePublicObjectInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!attribute object_id_
          #
          #   @return [String]
          required :object_id_, String

          # @!attribute id_property
          #   The name of a property whose values are unique for this object type
          #
          #   @return [String, nil]
          optional :id_property, String

          # @!method initialize(object_type:, object_id_:, id_property: nil, request_options: {})
          #   @param object_type [String]
          #
          #   @param object_id_ [String]
          #
          #   @param id_property [String] The name of a property whose values are unique for this object type
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
