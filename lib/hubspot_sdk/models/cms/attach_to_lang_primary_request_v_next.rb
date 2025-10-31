# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AttachToLangPrimaryRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the object to add to a multi-language group.
        #
        #   @return [String]
        required :id, String

        # @!attribute language
        #   Designated language of the object to add to a multi-language group.
        #
        #   @return [String]
        required :language, String

        # @!attribute primary_id
        #   ID of primary language object in multi-language group.
        #
        #   @return [String]
        required :primary_id, String, api_name: :primaryId

        # @!attribute primary_language
        #   Primary language of the multi-language group.
        #
        #   @return [String, nil]
        optional :primary_language, String, api_name: :primaryLanguage

        # @!method initialize(id:, language:, primary_id:, primary_language: nil)
        #   Request body object for attaching objects to multi-language groups.
        #
        #   @param id [String] ID of the object to add to a multi-language group.
        #
        #   @param language [String] Designated language of the object to add to a multi-language group.
        #
        #   @param primary_id [String] ID of primary language object in multi-language group.
        #
        #   @param primary_language [String] Primary language of the multi-language group.
      end
    end
  end
end
