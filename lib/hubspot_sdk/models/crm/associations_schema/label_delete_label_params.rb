# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module AssociationsSchema
        # @see HubSpotSDK::Resources::Crm::AssociationsSchema::Labels#delete_label
        class LabelDeleteLabelParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute from_object_type
          #
          #   @return [String]
          required :from_object_type, String

          # @!attribute to_object_type
          #
          #   @return [String]
          required :to_object_type, String

          # @!attribute association_type_id
          #
          #   @return [Integer]
          required :association_type_id, Integer

          # @!method initialize(from_object_type:, to_object_type:, association_type_id:, request_options: {})
          #   @param from_object_type [String]
          #   @param to_object_type [String]
          #   @param association_type_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
