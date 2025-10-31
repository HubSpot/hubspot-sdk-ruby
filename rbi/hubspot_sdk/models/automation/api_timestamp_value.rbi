# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APITimestampValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APITimestampValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::APITimestampValue::TimestampType::OrSymbol
          )
        end
        attr_accessor :timestamp_type

        sig do
          returns(HubspotSDK::Automation::APITimestampValue::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            timestamp_type:
              HubspotSDK::Automation::APITimestampValue::TimestampType::OrSymbol,
            type: HubspotSDK::Automation::APITimestampValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(timestamp_type:, type:)
        end

        sig do
          override.returns(
            {
              timestamp_type:
                HubspotSDK::Automation::APITimestampValue::TimestampType::OrSymbol,
              type: HubspotSDK::Automation::APITimestampValue::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module TimestampType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APITimestampValue::TimestampType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXECUTION_TIME =
            T.let(
              :EXECUTION_TIME,
              HubspotSDK::Automation::APITimestampValue::TimestampType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APITimestampValue::TimestampType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APITimestampValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIMESTAMP =
            T.let(
              :TIMESTAMP,
              HubspotSDK::Automation::APITimestampValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APITimestampValue::Type::TaggedSymbol
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
