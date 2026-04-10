# typed: strong

module HubSpotSDK
  module Models
    module Account
      class CollectionResponseAPIUsageNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::CollectionResponseAPIUsageNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Account::APIUsage]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubSpotSDK::Account::APIUsage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns({ results: T::Array[HubSpotSDK::Account::APIUsage] })
        end
        def to_hash
        end
      end
    end
  end
end
