# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class AggregateEmailStatistics < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::AggregateEmailStatistics,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Marketing::EmailStatisticsData) }
        attr_reader :aggregate

        sig do
          params(
            aggregate: HubspotSDK::Marketing::EmailStatisticsData::OrHash
          ).void
        end
        attr_writer :aggregate

        # The aggregated statistics per campaign.
        sig do
          returns(T::Hash[Symbol, HubspotSDK::Marketing::EmailStatisticsData])
        end
        attr_accessor :campaign_aggregations

        # List of email IDs that were sent during the time span.
        sig { returns(T::Array[Integer]) }
        attr_accessor :emails

        sig do
          params(
            aggregate: HubspotSDK::Marketing::EmailStatisticsData::OrHash,
            campaign_aggregations:
              T::Hash[
                Symbol,
                HubspotSDK::Marketing::EmailStatisticsData::OrHash
              ],
            emails: T::Array[Integer]
          ).returns(T.attached_class)
        end
        def self.new(
          aggregate:,
          # The aggregated statistics per campaign.
          campaign_aggregations:,
          # List of email IDs that were sent during the time span.
          emails:
        )
        end

        sig do
          override.returns(
            {
              aggregate: HubspotSDK::Marketing::EmailStatisticsData,
              campaign_aggregations:
                T::Hash[Symbol, HubspotSDK::Marketing::EmailStatisticsData],
              emails: T::Array[Integer]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
