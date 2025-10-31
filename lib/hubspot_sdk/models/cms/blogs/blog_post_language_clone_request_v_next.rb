# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BlogPostLanguageCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
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
          #   Request body object for creating new blog post language variant.
          #
          #   @param id [String] ID of blog post to clone.
          #
          #   @param language [String] Target language of new variant.
        end
      end
    end
  end
end
