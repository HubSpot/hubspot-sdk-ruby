# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ArrayFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ArrayFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.anything) }
        attr_accessor :items

        # Specifies that the field is of type 'ARRAY'.
        sig do
          returns(HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            items: T.anything,
            type: HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          items:,
          # Specifies that the field is of type 'ARRAY'.
          type:
        )
        end

        sig do
          override.returns(
            {
              items: T.anything,
              type: HubSpotSDK::Automation::ArrayFieldSchema::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies that the field is of type 'ARRAY'.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::ArrayFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARRAY =
            T.let(
              :ARRAY,
              HubSpotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::ArrayFieldSchema::Type::TaggedSymbol
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
