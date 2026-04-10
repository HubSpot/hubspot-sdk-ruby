# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SetNewLanguagePrimaryRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::SetNewLanguagePrimaryRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of object to set as primary in multi-language group.
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # ID of object to set as primary in multi-language group.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
