# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalEmailStatisticIntervalNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponseWithTotalEmailStatisticIntervalNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of objects.
        sig { returns(T::Array[HubspotSDK::Marketing::EmailStatisticInterval]) }
        attr_accessor :results

        # Total number of objects.
        sig { returns(Integer) }
        attr_accessor :total

        # Response object for collections of EmailStatisticIntervals.
        sig do
          params(
            results:
              T::Array[HubspotSDK::Marketing::EmailStatisticInterval::OrHash],
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of objects.
          results:,
          # Total number of objects.
          total:
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Marketing::EmailStatisticInterval],
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
