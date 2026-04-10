# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicObjectListRecord < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   The ID of the list containing the imported objects.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute object_type
        #   The type of object contained in the list.
        #
        #   @return [String]
        required :object_type, String, api_name: :objectType

        # @!method initialize(list_id:, object_type:)
        #   @param list_id [String] The ID of the list containing the imported objects.
        #
        #   @param object_type [String] The type of object contained in the list.
      end
    end
  end
end
