# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ObjectTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #   The unique identifier for the object type.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute plural_label
        #   The plural form label for the object type.
        #
        #   @return [String]
        required :plural_label, String, api_name: :pluralLabel

        # @!attribute singular_label
        #   The singular form label for the object type.
        #
        #   @return [String]
        required :singular_label, String, api_name: :singularLabel

        # @!method initialize(object_type_id:, plural_label:, singular_label:)
        #   @param object_type_id [String] The unique identifier for the object type.
        #
        #   @param plural_label [String] The plural form label for the object type.
        #
        #   @param singular_label [String] The singular form label for the object type.
      end
    end
  end
end
