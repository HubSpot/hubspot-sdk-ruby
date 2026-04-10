# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseObjectSchemaNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponseObjectSchemaNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::ObjectSchema]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Cms::ObjectSchema::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubSpotSDK::Cms::ObjectSchema] })
        end
        def to_hash
        end
      end
    end
  end
end
