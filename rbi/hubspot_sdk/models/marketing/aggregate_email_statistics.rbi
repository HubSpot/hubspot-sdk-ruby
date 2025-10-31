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

        sig { returns(T.nilable(HubspotSDK::Marketing::EmailStatisticsData)) }
        attr_reader :aggregate

        sig do
          params(
            aggregate: HubspotSDK::Marketing::EmailStatisticsData::OrHash
          ).void
        end
        attr_writer :aggregate

        # The aggregated statistics per campaign.
        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, HubspotSDK::Marketing::EmailStatisticsData]
            )
          )
        end
        attr_reader :campaign_aggregations

        sig do
          params(
            campaign_aggregations:
              T::Hash[
                Symbol,
                HubspotSDK::Marketing::EmailStatisticsData::OrHash
              ]
          ).void
        end
        attr_writer :campaign_aggregations

        # List of email IDs that were sent during the time span.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :emails

        sig { params(emails: T::Array[Integer]).void }
        attr_writer :emails

        # Aggregated statistics for the given interval, plus the IDs of emails that were
        # sent during that interval.
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
          aggregate: nil,
          # The aggregated statistics per campaign.
          campaign_aggregations: nil,
          # List of email IDs that were sent during the time span.
          emails: nil
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
