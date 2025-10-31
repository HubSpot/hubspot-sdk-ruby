# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ObjectTypeNearOrAtAssociationLimit < HubspotSDK::Internal::Type::BaseModel
        # @!attribute has_records_at_limit
        #
        #   @return [Boolean]
        required :has_records_at_limit, HubspotSDK::Internal::Type::Boolean, api_name: :hasRecordsAtLimit

        # @!attribute has_records_near_limit
        #
        #   @return [Boolean]
        required :has_records_near_limit, HubspotSDK::Internal::Type::Boolean, api_name: :hasRecordsNearLimit

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

        # @!method initialize(has_records_at_limit:, has_records_near_limit:, object_type_id:, plural_label:, singular_label:)
        #   @param has_records_at_limit [Boolean]
        #   @param has_records_near_limit [Boolean]
        #   @param object_type_id [String]
        #   @param plural_label [String]
        #   @param singular_label [String]
      end
    end
  end
end
