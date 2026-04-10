# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayProperty < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardDisplayProperty,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Type of data represented by this property.
          sig do
            returns(
              HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol
            )
          end
          attr_accessor :data_type

          # The label for this property as you'd like it displayed to users.
          sig { returns(String) }
          attr_accessor :label

          # An internal identifier for this property. This value must be unique TODO.
          sig { returns(String) }
          attr_accessor :name

          # An array of available options that can be displayed. Only used in when
          # `dataType` is `STATUS`.
          sig { returns(T::Array[HubSpotSDK::Crm::Extensions::DisplayOption]) }
          attr_accessor :options

          sig do
            params(
              data_type:
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol,
              label: String,
              name: String,
              options:
                T::Array[HubSpotSDK::Crm::Extensions::DisplayOption::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Type of data represented by this property.
            data_type:,
            # The label for this property as you'd like it displayed to users.
            label:,
            # An internal identifier for this property. This value must be unique TODO.
            name:,
            # An array of available options that can be displayed. Only used in when
            # `dataType` is `STATUS`.
            options:
          )
          end

          sig do
            override.returns(
              {
                data_type:
                  HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol,
                label: String,
                name: String,
                options: T::Array[HubSpotSDK::Crm::Extensions::DisplayOption]
              }
            )
          end
          def to_hash
          end

          # Type of data represented by this property.
          module DataType
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            DATE =
              T.let(
                :DATE,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :DATETIME,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            LINK =
              T.let(
                :LINK,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            NUMERIC =
              T.let(
                :NUMERIC,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            STATUS =
              T.let(
                :STATUS,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            STRING =
              T.let(
                :STRING,
                HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
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
end
