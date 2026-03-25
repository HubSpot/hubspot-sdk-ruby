# typed: strong

module HubspotSDK
  module Models
    module Automation
      class StringFieldSchema < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::StringFieldSchema,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(HubspotSDK::Automation::StringFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          returns(
            T.nilable(
              HubspotSDK::Automation::StringFieldSchema::Format::OrSymbol
            )
          )
        end
        attr_reader :format_

        sig do
          params(
            format_: HubspotSDK::Automation::StringFieldSchema::Format::OrSymbol
          ).void
        end
        attr_writer :format_

        sig do
          params(
            type: HubspotSDK::Automation::StringFieldSchema::Type::OrSymbol,
            format_: HubspotSDK::Automation::StringFieldSchema::Format::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:, format_: nil)
        end

        sig do
          override.returns(
            {
              type: HubspotSDK::Automation::StringFieldSchema::Type::OrSymbol,
              format_:
                HubspotSDK::Automation::StringFieldSchema::Format::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::StringFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :STRING,
              HubspotSDK::Automation::StringFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::StringFieldSchema::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Format
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::StringFieldSchema::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :DATE,
              HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          DATE_TIME =
            T.let(
              :DATE_TIME,
              HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          OBJECT_COORDINATE =
            T.let(
              :OBJECT_COORDINATE,
              HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          TIME =
            T.let(
              :TIME,
              HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          URI =
            T.let(
              :URI,
              HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
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
