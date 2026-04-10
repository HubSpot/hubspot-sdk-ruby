# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailStatisticInterval < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailStatisticInterval,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Marketing::EmailStatisticsData) }
        attr_reader :aggregations

        sig do
          params(
            aggregations: HubSpotSDK::Marketing::EmailStatisticsData::OrHash
          ).void
        end
        attr_writer :aggregations

        sig { returns(HubSpotSDK::Marketing::Interval) }
        attr_reader :interval

        sig { params(interval: HubSpotSDK::Marketing::Interval::OrHash).void }
        attr_writer :interval

        sig do
          params(
            aggregations: HubSpotSDK::Marketing::EmailStatisticsData::OrHash,
            interval: HubSpotSDK::Marketing::Interval::OrHash
          ).returns(T.attached_class)
        end
        def self.new(aggregations:, interval:)
        end

        sig do
          override.returns(
            {
              aggregations: HubSpotSDK::Marketing::EmailStatisticsData,
              interval: HubSpotSDK::Marketing::Interval
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
