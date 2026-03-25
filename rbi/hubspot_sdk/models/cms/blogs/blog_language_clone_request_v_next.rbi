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

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          sig { returns(T.nilable(String)) }
          attr_reader :primary_language

          sig { params(primary_language: String).void }
          attr_writer :primary_language

          sig { returns(T.nilable(String)) }
          attr_reader :slug

          sig { params(slug: String).void }
          attr_writer :slug

          sig do
            params(
              id: String,
              language: String,
              primary_language: String,
              slug: String
            ).returns(T.attached_class)
          end
          def self.new(id:, language: nil, primary_language: nil, slug: nil)
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
