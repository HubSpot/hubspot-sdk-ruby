# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayProperty < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CardDisplayProperty,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Type of data represented by this property.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol
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
          sig { returns(T::Array[HubspotSDK::Crm::Extensions::DisplayOption]) }
          attr_accessor :options

          # Definition for a card display property.
          sig do
            params(
              data_type:
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol,
              label: String,
              name: String,
              options:
                T::Array[HubspotSDK::Crm::Extensions::DisplayOption::OrHash]
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
                  HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::OrSymbol,
                label: String,
                name: String,
                options: T::Array[HubspotSDK::Crm::Extensions::DisplayOption]
              }
            )
          end
          def to_hash
          end

          # Type of data represented by this property.
          module DataType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            DATE =
              T.let(
                :DATE,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :DATETIME,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            LINK =
              T.let(
                :LINK,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            NUMERIC =
              T.let(
                :NUMERIC,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            STRING =
              T.let(
                :STRING,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )
            STATUS =
              T.let(
                :STATUS,
                HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CardDisplayProperty::DataType::TaggedSymbol
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
