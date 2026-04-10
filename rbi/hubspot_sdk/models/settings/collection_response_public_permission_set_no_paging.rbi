# typed: strong

module HubSpotSDK
  module Models
    module Settings
      class CollectionResponsePublicPermissionSetNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Settings::CollectionResponsePublicPermissionSetNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Settings::PublicPermissionSet]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Settings::PublicPermissionSet::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubSpotSDK::Settings::PublicPermissionSet] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
