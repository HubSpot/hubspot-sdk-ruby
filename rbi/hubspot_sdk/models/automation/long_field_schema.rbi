# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class LongFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::LongFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The type of the field, which is LONG by default.
        sig { returns(HubSpotSDK::Automation::LongFieldSchema::Type::OrSymbol) }
        attr_accessor :type

        # The maximum value allowed for the long field.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum

        sig { params(maximum: Integer).void }
        attr_writer :maximum

        # The minimum value allowed for the long field.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum

        sig { params(minimum: Integer).void }
        attr_writer :minimum

        sig do
          params(
            type: HubSpotSDK::Automation::LongFieldSchema::Type::OrSymbol,
            maximum: Integer,
            minimum: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of the field, which is LONG by default.
          type:,
          # The maximum value allowed for the long field.
          maximum: nil,
          # The minimum value allowed for the long field.
          minimum: nil
        )
        end

        sig do
          override.returns(
            {
              type: HubSpotSDK::Automation::LongFieldSchema::Type::OrSymbol,
              maximum: Integer,
              minimum: Integer
            }
          )
        end
        def to_hash
        end

        # The type of the field, which is LONG by default.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::LongFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LONG =
            T.let(
              :LONG,
              HubSpotSDK::Automation::LongFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::LongFieldSchema::Type::TaggedSymbol
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
