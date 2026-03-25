# typed: strong

module HubspotSDK
  module Models
    module Cms
      BlogPostLanguageCloneRequestVNext =
        Blogs::BlogPostLanguageCloneRequestVNext

      module Blogs
        class BlogPostLanguageCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BlogPostLanguageCloneRequestVNext,
                HubspotSDK::Internal::AnyHash
              )
            end

          # ID of blog post to clone.
          sig { returns(String) }
          attr_accessor :id

          # Target language of new variant.
          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          sig { params(id: String, language: String).returns(T.attached_class) }
          def self.new(
            # ID of blog post to clone.
            id:,
            # Target language of new variant.
            language: nil
          )
          end

          sig { override.returns({ id: String, language: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
