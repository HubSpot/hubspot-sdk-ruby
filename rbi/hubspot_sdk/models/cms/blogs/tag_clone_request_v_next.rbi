# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class TagCloneRequestVNext < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::TagCloneRequestVNext,
                HubspotSDK::Internal::AnyHash
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

          # Request body object for cloning blog tags.
          sig do
            params(
              id: String,
              name: String,
              language: String,
              primary_language: String
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
            primary_language: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
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
