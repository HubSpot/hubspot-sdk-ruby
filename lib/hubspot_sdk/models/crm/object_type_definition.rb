# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeDefinition < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute plural_label
        #
        #   @return [String]
        required :plural_label, String, api_name: :pluralLabel

        # @!attribute singular_label
        #
        #   @return [String]
        required :singular_label, String, api_name: :singularLabel

        # @!method initialize(object_type_id:, plural_label:, singular_label:)
        #   @param object_type_id [String]
        #   @param plural_label [String]
        #   @param singular_label [String]
      end
    end
  end
end
