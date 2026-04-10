# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class TagCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of the object to be cloned.
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #   Name of newly cloned blog tag.
          #
          #   @return [String]
          required :name, String

          # @!attribute language
          #   Target language of new variant.
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute primary_language
          #   Language of primary blog tag to clone.
          #
          #   @return [String, nil]
          optional :primary_language, String, api_name: :primaryLanguage

          # @!method initialize(id:, name:, language: nil, primary_language: nil)
          #   @param id [String] ID of the object to be cloned.
          #
          #   @param name [String] Name of newly cloned blog tag.
          #
          #   @param language [String] Target language of new variant.
          #
          #   @param primary_language [String] Language of primary blog tag to clone.
        end
      end
    end
  end
end
