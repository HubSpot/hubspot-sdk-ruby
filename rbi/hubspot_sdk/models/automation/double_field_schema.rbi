# typed: strong

module HubspotSDK
  module Models
    module Automation
      class DoubleFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::DoubleFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Automation::DoubleFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(Float)) }
        attr_reader :maximum

        sig { params(maximum: Float).void }
        attr_writer :maximum

        sig { returns(T.nilable(Float)) }
        attr_reader :minimum

        sig { params(minimum: Float).void }
        attr_writer :minimum

        sig do
          params(
            type: HubspotSDK::Automation::DoubleFieldSchema::Type::OrSymbol,
            maximum: Float,
            minimum: Float
          ).returns(T.attached_class)
        end
        def self.new(type:, maximum: nil, minimum: nil)
        end

        sig do
          override.returns(
            {
              type: HubspotSDK::Automation::DoubleFieldSchema::Type::OrSymbol,
              maximum: Float,
              minimum: Float
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::DoubleFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOUBLE =
            T.let(
              :DOUBLE,
              HubspotSDK::Automation::DoubleFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::DoubleFieldSchema::Type::TaggedSymbol
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
