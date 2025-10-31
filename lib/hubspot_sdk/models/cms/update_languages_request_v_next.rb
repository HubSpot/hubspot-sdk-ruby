# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class UpdateLanguagesRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute languages
        #   Map of object IDs to associated languages of object in the multi-language group.
        #
        #   @return [Hash{Symbol=>String}]
        required :languages, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute primary_id
        #   ID of the primary object in the multi-language group.
        #
        #   @return [String]
        required :primary_id, String, api_name: :primaryId

        # @!method initialize(languages:, primary_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::UpdateLanguagesRequestVNext} for more details.
        #
        #   Request object for updating languages within a multi-language group.
        #
        #   @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
        #
        #   @param primary_id [String] ID of the primary object in the multi-language group.
      end
    end
  end
end
