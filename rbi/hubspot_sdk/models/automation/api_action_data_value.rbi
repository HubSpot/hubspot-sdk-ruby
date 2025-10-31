# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIActionDataValue < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIActionDataValue,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(String) }
        attr_accessor :data_key

        sig do
          returns(HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            action_id: String,
            data_key: String,
            type: HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(action_id:, data_key:, type:)
        end

        sig do
          override.returns(
            {
              action_id: String,
              data_key: String,
              type: HubspotSDK::Automation::APIActionDataValue::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIActionDataValue::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FIELD_DATA =
            T.let(
              :FIELD_DATA,
              HubspotSDK::Automation::APIActionDataValue::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIActionDataValue::Type::TaggedSymbol
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
