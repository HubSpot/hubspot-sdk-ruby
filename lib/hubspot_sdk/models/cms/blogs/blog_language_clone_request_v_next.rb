# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BlogLanguageCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
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

          # @!attribute use_published
          #
          #   @return [Boolean, nil]
          optional :use_published, HubSpotSDK::Internal::Type::Boolean, api_name: :usePublished

          # @!method initialize(id:, language: nil, primary_language: nil, slug: nil, use_published: nil)
          #   @param id [String] ID of blog to clone.
          #
          #   @param language [String] Target language of new variant.
          #
          #   @param primary_language [String] Language of primary blog to clone.
          #
          #   @param slug [String] Path to this blog.
          #
          #   @param use_published [Boolean]
        end
      end

      BlogLanguageCloneRequestVNext = Blogs::BlogLanguageCloneRequestVNext
    end
  end
end
