# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BlogPostLanguageCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of blog post to clone.
          #
          #   @return [String]
          required :id, String

          # @!attribute language
          #   Target language of new variant.
          #
          #   @return [String, nil]
          optional :language, String

          # @!method initialize(id:, language: nil)
          #   @param id [String] ID of blog post to clone.
          #
          #   @param language [String] Target language of new variant.
        end
      end

      BlogPostLanguageCloneRequestVNext = Blogs::BlogPostLanguageCloneRequestVNext
    end
  end
end
