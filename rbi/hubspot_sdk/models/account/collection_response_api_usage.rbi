# typed: strong

module HubspotSDK
  module Models
    module Account
      class CollectionResponseAPIUsage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Account::CollectionResponseAPIUsage,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Account::APIUsage]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Account::APIUsage::OrHash],
            paging: HubspotSDK::Marketing::EmailsPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Account::APIUsage],
              paging: HubspotSDK::Marketing::EmailsPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
