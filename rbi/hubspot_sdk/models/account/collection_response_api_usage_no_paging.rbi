# typed: strong

module HubspotSDK
  module Models
    module Account
      class CollectionResponseAPIUsageNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::CollectionResponseAPIUsageNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Account::APIUsage]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Account::APIUsage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubspotSDK::Account::APIUsage] })
        end
        def to_hash
        end
      end
    end
  end
end
