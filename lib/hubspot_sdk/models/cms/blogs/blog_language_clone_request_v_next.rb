# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BlogLanguageCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of blog to clone.
          #
          #   @return [String]
          required :id, String

          # @!attribute language
          #   Target language of new variant.
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute primary_language
          #   Language of primary blog to clone.
          #
          #   @return [String, nil]
          optional :primary_language, String, api_name: :primaryLanguage

          # @!attribute slug
          #   Path to this blog.
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, language: nil, primary_language: nil, slug: nil)
          #   Request body object for creating new language variant blog.
          #
          #   @param id [String] ID of blog to clone.
          #
          #   @param language [String] Target language of new variant.
          #
          #   @param primary_language [String] Language of primary blog to clone.
          #
          #   @param slug [String] Path to this blog.
        end
      end
    end
  end
end
