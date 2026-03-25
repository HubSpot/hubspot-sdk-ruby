# typed: strong

module HubspotSDK
  module Models
    class CollectionResponsePropertyNoPaging < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::CollectionResponsePropertyNoPaging,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[HubspotSDK::Cms::Property1]) }
      attr_accessor :results

      sig do
        params(results: T::Array[HubspotSDK::Cms::Property1::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(results:)
      end

      sig do
        override.returns({ results: T::Array[HubspotSDK::Cms::Property1] })
      end
      def to_hash
      end
    end
  end
end
