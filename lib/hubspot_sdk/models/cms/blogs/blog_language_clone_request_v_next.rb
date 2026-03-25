# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BlogLanguageCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute language
          #
          #   @return [String, nil]
          optional :language, String

          # @!attribute primary_language
          #
          #   @return [String, nil]
          optional :primary_language, String, api_name: :primaryLanguage

          # @!attribute slug
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, language: nil, primary_language: nil, slug: nil)
          #   @param id [String]
          #   @param language [String]
          #   @param primary_language [String]
          #   @param slug [String]
        end
      end

      BlogLanguageCloneRequestVNext = Blogs::BlogLanguageCloneRequestVNext
    end
  end
end
