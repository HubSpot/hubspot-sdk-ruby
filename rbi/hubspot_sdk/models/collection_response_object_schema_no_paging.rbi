# typed: strong

module HubspotSDK
  module Models
    class CollectionResponseObjectSchemaNoPaging < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::CollectionResponseObjectSchemaNoPaging,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubspotSDK::CRM::Objects::ObjectSchema]) }
      attr_accessor :results

      sig do
        params(
          results: T::Array[HubspotSDK::CRM::Objects::ObjectSchema::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(results:)
      end

      sig do
        override.returns(
          { results: T::Array[HubspotSDK::CRM::Objects::ObjectSchema] }
        )
      end
      def to_hash
      end
    end
  end
end
