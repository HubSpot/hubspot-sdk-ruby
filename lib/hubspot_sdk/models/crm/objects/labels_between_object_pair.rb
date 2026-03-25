# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class LabelsBetweenObjectPair < HubspotSDK::Internal::Type::BaseModel
          # @!attribute from_object_id
          #   Source unique ID of the object.
          #
          #   @return [String]
          required :from_object_id, String, api_name: :fromObjectId

          # @!attribute from_object_type_id
          #   Source object type.
          #
          #   @return [String]
          required :from_object_type_id, String, api_name: :fromObjectTypeId

          # @!attribute labels
          #
          #   @return [Array<String>]
          required :labels, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute to_object_id
          #   Target unique ID of the object.
          #
          #   @return [String]
          required :to_object_id, String, api_name: :toObjectId

          # @!attribute to_object_type_id
          #   Target object type.
          #
          #   @return [String]
          required :to_object_type_id, String, api_name: :toObjectTypeId

          # @!method initialize(from_object_id:, from_object_type_id:, labels:, to_object_id:, to_object_type_id:)
          #   The relationship descriptors applicable between two object types.
          #
          #   @param from_object_id [String] Source unique ID of the object.
          #
          #   @param from_object_type_id [String] Source object type.
          #
          #   @param labels [Array<String>]
          #
          #   @param to_object_id [String] Target unique ID of the object.
          #
          #   @param to_object_type_id [String] Target object type.
        end
      end
    end
  end
end
