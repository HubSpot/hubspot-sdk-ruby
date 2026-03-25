# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module AssociationsSchema
        # @see HubspotSDK::Resources::Crm::AssociationsSchema::Labels#delete_label
        class LabelDeleteLabelParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

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
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
