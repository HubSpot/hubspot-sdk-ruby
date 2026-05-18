# typed: strong

module HubSpotSDK
  module Models
    module Cms
      BlogAuthorCloneRequestVNext = Blogs::BlogAuthorCloneRequestVNext

      module Blogs
        class BlogAuthorCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::BlogAuthorCloneRequestVNext,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # ID of the object to be cloned.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(HubSpotSDK::Cms::Blogs::BlogAuthor) }
          attr_reader :blog_author

          sig do
            params(blog_author: HubSpotSDK::Cms::Blogs::BlogAuthor::OrHash).void
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

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :use_published

          sig { params(use_published: T::Boolean).void }
          attr_writer :use_published

          sig do
            params(
              id: String,
              blog_author: HubSpotSDK::Cms::Blogs::BlogAuthor::OrHash,
              language: String,
              primary_language: String,
              use_published: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the object to be cloned.
            id:,
            blog_author:,
            # Language of newly cloned object.
            language: nil,
            # Primary language in multi-language group.
            primary_language: nil,
            use_published: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                blog_author: HubSpotSDK::Cms::Blogs::BlogAuthor,
                language: String,
                primary_language: String,
                use_published: T::Boolean
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
