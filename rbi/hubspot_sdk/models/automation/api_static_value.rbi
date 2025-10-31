# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :static_value

        sig { returns(HubspotSDK::Automation::APIStaticValue::Type::OrSymbol) }
        attr_accessor :type

        sig do
          params(
            static_value: String,
            type: HubspotSDK::Automation::APIStaticValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(static_value:, type:)
        end

        sig do
          override.returns(
            {
              static_value: String,
              type: HubspotSDK::Automation::APIStaticValue::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIStaticValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_VALUE =
            T.let(
              :STATIC_VALUE,
              HubspotSDK::Automation::APIStaticValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticValue::Type::TaggedSymbol
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
