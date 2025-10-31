# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AttachToLangPrimaryRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AttachToLangPrimaryRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the object to add to a multi-language group.
        sig { returns(String) }
        attr_accessor :id

        # Designated language of the object to add to a multi-language group.
        sig { returns(String) }
        attr_accessor :language

        # ID of primary language object in multi-language group.
        sig { returns(String) }
        attr_accessor :primary_id

        # Primary language of the multi-language group.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_language

        sig { params(primary_language: String).void }
        attr_writer :primary_language

        # Request body object for attaching objects to multi-language groups.
        sig do
          params(
            id: String,
            language: String,
            primary_id: String,
            primary_language: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the object to add to a multi-language group.
          id:,
          # Designated language of the object to add to a multi-language group.
          language:,
          # ID of primary language object in multi-language group.
          primary_id:,
          # Primary language of the multi-language group.
          primary_language: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              language: String,
              primary_id: String,
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
