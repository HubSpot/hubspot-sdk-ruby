# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailStatisticInterval < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailStatisticInterval,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Marketing::EmailStatisticsData) }
        attr_reader :aggregations

        sig do
          params(
            aggregations: HubspotSDK::Marketing::EmailStatisticsData::OrHash
          ).void
        end
        attr_writer :aggregations

        sig { returns(HubspotSDK::Marketing::Interval) }
        attr_reader :interval

        sig { params(interval: HubspotSDK::Marketing::Interval::OrHash).void }
        attr_writer :interval

        sig do
          params(
            aggregations: HubspotSDK::Marketing::EmailStatisticsData::OrHash,
            interval: HubspotSDK::Marketing::Interval::OrHash
          ).returns(T.attached_class)
        end
        def self.new(aggregations:, interval:)
        end

        sig do
          override.returns(
            {
              aggregations: HubspotSDK::Marketing::EmailStatisticsData,
              interval: HubspotSDK::Marketing::Interval
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
