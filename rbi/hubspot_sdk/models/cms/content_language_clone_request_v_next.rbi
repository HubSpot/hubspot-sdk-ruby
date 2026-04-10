# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ContentLanguageCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ContentLanguageCloneRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of content to clone.
        sig { returns(String) }
        attr_accessor :id

        # Target language of new variant.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Language of primary content to clone.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_language

        sig { params(primary_language: String).void }
        attr_writer :primary_language

        sig do
          params(
            id: String,
            language: String,
            primary_language: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of content to clone.
          id:,
          # Target language of new variant.
          language: nil,
          # Language of primary content to clone.
          primary_language: nil
        )
        end

        sig do
          override.returns(
            { id: String, language: String, primary_language: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
