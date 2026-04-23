# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class LookupAssociationSpec < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute association_spec
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @return [HubSpotSDK::Models::AssociationSpec]
        required :association_spec, -> { HubSpotSDK::AssociationSpec }, api_name: :associationSpec

        # @!attribute cardinality
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::LookupAssociationSpec::Cardinality, nil]
        optional :cardinality, enum: -> { HubSpotSDK::Cms::LookupAssociationSpec::Cardinality }

        # @!attribute max_to_object_ids
        #
        #   @return [Integer, nil]
        optional :max_to_object_ids, Integer, api_name: :maxToObjectIds

        # @!attribute to_object_type_id
        #
        #   @return [String, nil]
        optional :to_object_type_id, String, api_name: :toObjectTypeId

        # @!method initialize(association_spec:, cardinality: nil, max_to_object_ids: nil, to_object_type_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::LookupAssociationSpec} for more details.
        #
        #   @param association_spec [HubSpotSDK::Models::AssociationSpec] Defines the type, direction, and details of the relationship between two CRM obj
        #
        #   @param cardinality [Symbol, HubSpotSDK::Models::Cms::LookupAssociationSpec::Cardinality]
        #
        #   @param max_to_object_ids [Integer]
        #
        #   @param to_object_type_id [String]

        # @see HubSpotSDK::Models::Cms::LookupAssociationSpec#cardinality
        module Cardinality
          extend HubSpotSDK::Internal::Type::Enum

          ONE_TO_MANY = :ONE_TO_MANY
          ONE_TO_ONE = :ONE_TO_ONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
