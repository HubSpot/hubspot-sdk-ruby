# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ContentLanguageCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of content to clone.
        #
        #   @return [String]
        required :id, String

        # @!attribute language
        #   Target language of new variant.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute primary_language
        #   Language of primary content to clone.
        #
        #   @return [String, nil]
        optional :primary_language, String, api_name: :primaryLanguage

        # @!attribute use_published
        #
        #   @return [Boolean, nil]
        optional :use_published, HubSpotSDK::Internal::Type::Boolean, api_name: :usePublished

        # @!method initialize(id:, language: nil, primary_language: nil, use_published: nil)
        #   @param id [String] ID of content to clone.
        #
        #   @param language [String] Target language of new variant.
        #
        #   @param primary_language [String] Language of primary content to clone.
        #
        #   @param use_published [Boolean]
      end
    end
  end
end
