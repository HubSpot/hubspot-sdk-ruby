# typed: strong

module HubSpotSDK
  module Models
    class CollectionResponsePropertyGroupNoPaging < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::CollectionResponsePropertyGroupNoPaging,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubSpotSDK::PropertyGroup]) }
      attr_accessor :results

      sig do
        params(results: T::Array[HubSpotSDK::PropertyGroup::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(results:)
      end

      sig { override.returns({ results: T::Array[HubSpotSDK::PropertyGroup] }) }
      def to_hash
      end
    end
  end
end
