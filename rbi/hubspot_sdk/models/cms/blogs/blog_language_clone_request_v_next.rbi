# typed: strong

module HubspotSDK
  module Models
    module Cms
      BlogLanguageCloneRequestVNext = Blogs::BlogLanguageCloneRequestVNext

      module Blogs
        class BlogLanguageCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BlogLanguageCloneRequestVNext,
                HubspotSDK::Internal::AnyHash
              )
            end

          # ID of blog to clone.
          sig { returns(String) }
          attr_accessor :id

          # Target language of new variant.
          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          # Language of primary blog to clone.
          sig { returns(T.nilable(String)) }
          attr_reader :primary_language

          sig { params(primary_language: String).void }
          attr_writer :primary_language

          # Path to this blog.
          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          # Request body object for creating new language variant blog.
          sig do
            params(
              id: String,
              language: String,
              primary_language: String,
              slug: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of blog to clone.
            id:,
            # Target language of new variant.
            language: nil,
            # Language of primary blog to clone.
            primary_language: nil,
            # Path to this blog.
            slug: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                language: String,
                primary_language: String,
                slug: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
