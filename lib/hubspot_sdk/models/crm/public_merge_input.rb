# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicMergeInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_to_merge
        #   The unique identifier of the CRM object that will be merged into the primary
        #   object.
        #
        #   @return [String]
        required :object_id_to_merge, String, api_name: :objectIdToMerge

        # @!attribute primary_object_id
        #   The unique identifier of the CRM object that will remain after the merge.
        #
        #   @return [String]
        required :primary_object_id, String, api_name: :primaryObjectId

        # @!method initialize(object_id_to_merge:, primary_object_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicMergeInput} for more details.
        #
        #   @param object_id_to_merge [String] The unique identifier of the CRM object that will be merged into the primary obj
        #
        #   @param primary_object_id [String] The unique identifier of the CRM object that will remain after the merge.
      end
    end
  end
end
