# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class ActionOverrideRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute associated_object_type_ids
        #
        #   @return [Array<String>, nil]
        optional :associated_object_type_ids,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjectTypeIds

        # @!attribute list_ids
        #
        #   @return [Array<Integer>, nil]
        optional :list_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :listIds

        # @!attribute object_ids
        #
        #   @return [Array<Integer>, nil]
        optional :object_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer], api_name: :objectIds

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(associated_object_type_ids: nil, list_ids: nil, object_ids: nil, properties: nil)
        #   @param associated_object_type_ids [Array<String>]
        #   @param list_ids [Array<Integer>]
        #   @param object_ids [Array<Integer>]
        #   @param properties [Array<String>]
      end
    end
  end
end
