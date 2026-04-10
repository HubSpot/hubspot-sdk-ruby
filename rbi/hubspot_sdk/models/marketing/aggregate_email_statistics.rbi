# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class AggregateEmailStatistics < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::AggregateEmailStatistics,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Marketing::EmailStatisticsData) }
        attr_reader :aggregate

        sig do
          params(
            aggregate: HubSpotSDK::Marketing::EmailStatisticsData::OrHash
          ).void
        end
        attr_writer :aggregate

        # The aggregated statistics per campaign.
        sig do
          returns(T::Hash[Symbol, HubSpotSDK::Marketing::EmailStatisticsData])
        end
        attr_accessor :campaign_aggregations

        # List of email IDs that were sent during the time span.
        sig { returns(T::Array[Integer]) }
        attr_accessor :emails

        sig do
          params(
            aggregate: HubSpotSDK::Marketing::EmailStatisticsData::OrHash,
            campaign_aggregations:
              T::Hash[
                Symbol,
                HubSpotSDK::Marketing::EmailStatisticsData::OrHash
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
              aggregate: HubSpotSDK::Marketing::EmailStatisticsData,
              campaign_aggregations:
                T::Hash[Symbol, HubSpotSDK::Marketing::EmailStatisticsData],
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
