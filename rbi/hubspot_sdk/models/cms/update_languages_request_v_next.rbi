# typed: strong

module HubspotSDK
  module Models
    module Cms
      class UpdateLanguagesRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::UpdateLanguagesRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Map of object IDs to associated languages of object in the multi-language group.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :languages

        # ID of the primary object in the multi-language group.
        sig { returns(String) }
        attr_accessor :primary_id

        # Request object for updating languages within a multi-language group.
        sig do
          params(
            languages: T::Hash[Symbol, String],
            primary_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Map of object IDs to associated languages of object in the multi-language group.
          languages:,
          # ID of the primary object in the multi-language group.
          primary_id:
        )
        end

        sig do
          override.returns(
            { languages: T::Hash[Symbol, String], primary_id: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
