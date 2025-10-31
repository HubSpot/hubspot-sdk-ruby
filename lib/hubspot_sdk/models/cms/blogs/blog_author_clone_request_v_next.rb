# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BlogAuthorCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of the object to be cloned.
          #
          #   @return [String]
          required :id, String

          # @!attribute blog_author
          #   Model definition for a Blog Author.
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          required :blog_author, -> { HubspotSDK::Cms::Blogs::BlogAuthor }, api_name: :blogAuthor

          # @!attribute language
          #   Language of newly cloned object.
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute primary_language
          #   Primary language in multi-language group.
          #
          #   @return [String, nil]
          optional :primary_language, String, api_name: :primaryLanguage

          # @!method initialize(id:, blog_author:, language: nil, primary_language: nil)
          #   Request body object for cloning blog authors.
          #
          #   @param id [String] ID of the object to be cloned.
          #
          #   @param blog_author [HubspotSDK::Models::Cms::Blogs::BlogAuthor] Model definition for a Blog Author.
          #
          #   @param language [String] Language of newly cloned object.
          #
          #   @param primary_language [String] Primary language in multi-language group.
        end
      end
    end
  end
end
