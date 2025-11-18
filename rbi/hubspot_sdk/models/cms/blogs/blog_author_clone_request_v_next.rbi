# typed: strong

module HubspotSDK
  module Models
    module Cms
      BlogAuthorCloneRequestVNext = Blogs::BlogAuthorCloneRequestVNext

      module Blogs
        class BlogAuthorCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BlogAuthorCloneRequestVNext,
                HubspotSDK::Internal::AnyHash
              )
            end

          # ID of the object to be cloned.
          sig { returns(String) }
          attr_accessor :id

          # Model definition for a Blog Author.
          sig { returns(HubspotSDK::Cms::Blogs::BlogAuthor) }
          attr_reader :blog_author

          sig do
            params(blog_author: HubspotSDK::Cms::Blogs::BlogAuthor::OrHash).void
          end
          attr_writer :blog_author

          # Language of newly cloned object.
          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          # Primary language in multi-language group.
          sig { returns(T.nilable(String)) }
          attr_reader :primary_language

          sig { params(primary_language: String).void }
          attr_writer :primary_language

          # Request body object for cloning blog authors.
          sig do
            params(
              id: String,
              blog_author: HubspotSDK::Cms::Blogs::BlogAuthor::OrHash,
              language: String,
              primary_language: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the object to be cloned.
            id:,
            # Model definition for a Blog Author.
            blog_author:,
            # Language of newly cloned object.
            language: nil,
            # Primary language in multi-language group.
            primary_language: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                blog_author: HubspotSDK::Cms::Blogs::BlogAuthor,
                language: String,
                primary_language: String
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
