# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ObjectFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ObjectFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.anything) }
        attr_accessor :properties

        sig do
          returns(HubspotSDK::Automation::ObjectFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            properties: T.anything,
            type: HubspotSDK::Automation::ObjectFieldSchema::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(properties:, type:)
        end

        sig do
          override.returns(
            {
              properties: T.anything,
              type: HubspotSDK::Automation::ObjectFieldSchema::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::ObjectFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubspotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::ObjectFieldSchema::Type::TaggedSymbol
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
