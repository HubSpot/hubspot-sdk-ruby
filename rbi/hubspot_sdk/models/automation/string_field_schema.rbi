# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class StringFieldSchema < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::StringFieldSchema,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates that the type is a string, with the default value being STRING.
        sig do
          returns(HubSpotSDK::Automation::StringFieldSchema::Type::OrSymbol)
        end
        attr_accessor :type

        # Specifies the format of the string, with accepted values: DATE, DATE_TIME,
        # OBJECT_COORDINATE, TIME, URI.
        sig do
          returns(
            T.nilable(
              HubSpotSDK::Automation::StringFieldSchema::Format::OrSymbol
            )
          )
        end
        attr_reader :format_

        sig do
          params(
            format_: HubSpotSDK::Automation::StringFieldSchema::Format::OrSymbol
          ).void
        end
        attr_writer :format_

        sig do
          params(
            type: HubSpotSDK::Automation::StringFieldSchema::Type::OrSymbol,
            format_: HubSpotSDK::Automation::StringFieldSchema::Format::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates that the type is a string, with the default value being STRING.
          type:,
          # Specifies the format of the string, with accepted values: DATE, DATE_TIME,
          # OBJECT_COORDINATE, TIME, URI.
          format_: nil
        )
        end

        sig do
          override.returns(
            {
              type: HubSpotSDK::Automation::StringFieldSchema::Type::OrSymbol,
              format_:
                HubSpotSDK::Automation::StringFieldSchema::Format::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates that the type is a string, with the default value being STRING.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::StringFieldSchema::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :STRING,
              HubSpotSDK::Automation::StringFieldSchema::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::StringFieldSchema::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the format of the string, with accepted values: DATE, DATE_TIME,
        # OBJECT_COORDINATE, TIME, URI.
        module Format
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Automation::StringFieldSchema::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DATE =
            T.let(
              :DATE,
              HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          DATE_TIME =
            T.let(
              :DATE_TIME,
              HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          OBJECT_COORDINATE =
            T.let(
              :OBJECT_COORDINATE,
              HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          TIME =
            T.let(
              :TIME,
              HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )
          URI =
            T.let(
              :URI,
              HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::StringFieldSchema::Format::TaggedSymbol
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
