# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicMergeInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_to_merge
        #   The ID of the company to merge into the primary.
        #
        #   @return [String]
        required :object_id_to_merge, String, api_name: :objectIdToMerge

        # @!attribute primary_object_id
        #   The ID of the primary company, which the other will merge into.
        #
        #   @return [String]
        required :primary_object_id, String, api_name: :primaryObjectId

        # @!method initialize(object_id_to_merge:, primary_object_id:)
        #   Input data for merging two records.
        #
        #   @param object_id_to_merge [String] The ID of the company to merge into the primary.
        #
        #   @param primary_object_id [String] The ID of the primary company, which the other will merge into.
      end
    end
  end
end
