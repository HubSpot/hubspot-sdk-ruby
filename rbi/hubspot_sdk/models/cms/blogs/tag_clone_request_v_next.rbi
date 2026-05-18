# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class TagCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::TagCloneRequestVNext,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # ID of the object to be cloned.
          sig { returns(String) }
          attr_accessor :id

          # Name of newly cloned blog tag.
          sig { returns(String) }
          attr_accessor :name

          # Target language of new variant.
          sig { returns(T.nilable(String)) }
          attr_reader :language

          sig { params(language: String).void }
          attr_writer :language

          # Language of primary blog tag to clone.
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
              name: String,
              language: String,
              primary_language: String,
              use_published: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the object to be cloned.
            id:,
            # Name of newly cloned blog tag.
            name:,
            # Target language of new variant.
            language: nil,
            # Language of primary blog tag to clone.
            primary_language: nil,
            use_published: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
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
