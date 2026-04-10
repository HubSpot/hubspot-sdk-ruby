# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BlogAuthorCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   ID of the object to be cloned.
          #
          #   @return [String]
          required :id, String

          # @!attribute blog_author
          #
          #   @return [HubSpotSDK::Models::Cms::Blogs::BlogAuthor]
          required :blog_author, -> { HubSpotSDK::Cms::Blogs::BlogAuthor }, api_name: :blogAuthor

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
          #   @param id [String] ID of the object to be cloned.
          #
          #   @param blog_author [HubSpotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          #   @param language [String] Language of newly cloned object.
          #
          #   @param primary_language [String] Primary language in multi-language group.
        end
      end

      BlogAuthorCloneRequestVNext = Blogs::BlogAuthorCloneRequestVNext
    end
  end
end
