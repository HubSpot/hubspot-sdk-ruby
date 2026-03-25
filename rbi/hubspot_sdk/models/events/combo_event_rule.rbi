# typed: strong

module HubspotSDK
  module Models
    module Events
      class ComboEventRule < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ComboEventRule,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :count

        sig { returns(String) }
        attr_accessor :event_type_id

        sig { returns(T::Array[HubspotSDK::Events::PropertyFilter]) }
        attr_accessor :property_filters

        sig { returns(T.nilable(Integer)) }
        attr_reader :lookback_window_days

        sig { params(lookback_window_days: Integer).void }
        attr_writer :lookback_window_days

        sig do
          params(
            count: Integer,
            event_type_id: String,
            property_filters:
              T::Array[HubspotSDK::Events::PropertyFilter::OrHash],
            lookback_window_days: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          count:,
          event_type_id:,
          property_filters:,
          lookback_window_days: nil
        )
        end

        sig do
          override.returns(
            {
              count: Integer,
              event_type_id: String,
              property_filters: T::Array[HubspotSDK::Events::PropertyFilter],
              lookback_window_days: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
