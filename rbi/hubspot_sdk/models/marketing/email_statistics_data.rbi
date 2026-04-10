# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailStatisticsData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailStatisticsData,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Counters like number of `sent`, `open` or `delivered`.
        sig { returns(T::Hash[Symbol, Integer]) }
        attr_accessor :counters

        # Statistics by device.
        sig { returns(T::Hash[Symbol, T::Hash[Symbol, Integer]]) }
        attr_accessor :device_breakdown

        # Number of emails that were dropped and bounced.
        sig { returns(T::Hash[Symbol, T::Hash[Symbol, Integer]]) }
        attr_accessor :qualifier_stats

        # Ratios like `openratio` or `clickratio`
        sig { returns(T::Hash[Symbol, Float]) }
        attr_accessor :ratios

        sig do
          params(
            counters: T::Hash[Symbol, Integer],
            device_breakdown: T::Hash[Symbol, T::Hash[Symbol, Integer]],
            qualifier_stats: T::Hash[Symbol, T::Hash[Symbol, Integer]],
            ratios: T::Hash[Symbol, Float]
          ).returns(T.attached_class)
        end
        def self.new(
          # Counters like number of `sent`, `open` or `delivered`.
          counters:,
          # Statistics by device.
          device_breakdown:,
          # Number of emails that were dropped and bounced.
          qualifier_stats:,
          # Ratios like `openratio` or `clickratio`
          ratios:
        )
        end

        sig do
          override.returns(
            {
              counters: T::Hash[Symbol, Integer],
              device_breakdown: T::Hash[Symbol, T::Hash[Symbol, Integer]],
              qualifier_stats: T::Hash[Symbol, T::Hash[Symbol, Integer]],
              ratios: T::Hash[Symbol, Float]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
