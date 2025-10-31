# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticTimeZoneStrategy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticTimeZoneStrategy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :time_zone_id

        sig do
          returns(
            HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            time_zone_id: String,
            type:
              HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(time_zone_id:, type:)
        end

        sig do
          override.returns(
            {
              time_zone_id: String,
              type:
                HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_TIME_ZONE =
            T.let(
              :STATIC_TIME_ZONE,
              HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
