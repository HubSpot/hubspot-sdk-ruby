# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class ActionOverrideRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute associated_object_type_ids
        #   An array of strings, each representing an associated object type ID relevant to
        #   the action override.
        #
        #   @return [Array<String>, nil]
        optional :associated_object_type_ids,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectTypeIds

        # @!attribute list_ids
        #   An array of integers representing list IDs that are affected by the action
        #   override. These IDs are in int64 format.
        #
        #   @return [Array<Integer>, nil]
        optional :list_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :listIds

        # @!attribute object_ids
        #   An array of integers, each representing an object ID for which the action
        #   override is applicable. These IDs are in int64 format.
        #
        #   @return [Array<Integer>, nil]
        optional :object_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute properties
        #   An array of strings representing specific properties to be overridden in the
        #   action. Each entry in the array corresponds to a property name.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(associated_object_type_ids: nil, list_ids: nil, object_ids: nil, properties: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::ActionOverrideRequest} for more details.
        #
        #   @param associated_object_type_ids [Array<String>] An array of strings, each representing an associated object type ID relevant to
        #
        #   @param list_ids [Array<Integer>] An array of integers representing list IDs that are affected by the action overr
        #
        #   @param object_ids [Array<Integer>] An array of integers, each representing an object ID for which the action overri
        #
        #   @param properties [Array<String>] An array of strings representing specific properties to be overridden in the act
      end
    end
  end
end
