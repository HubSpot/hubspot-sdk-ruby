# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponsePropertyGroupNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponsePropertyGroupNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PropertyGroup]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::PropertyGroup::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Crm::PropertyGroup] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
