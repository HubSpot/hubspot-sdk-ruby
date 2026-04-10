# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponsePropertyNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponsePropertyNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::Property1]) }
        attr_accessor :results

        sig do
          params(results: T::Array[HubSpotSDK::Cms::Property1::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubSpotSDK::Cms::Property1] })
        end
        def to_hash
        end
      end
    end
  end
end
