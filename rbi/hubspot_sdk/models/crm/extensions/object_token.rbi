# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ObjectToken < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::ObjectToken,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The value of the property
          sig { returns(String) }
          attr_accessor :value

          # Type of data represented by this property.
          sig do
            returns(
              T.nilable(
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            )
          end
          attr_reader :data_type

          sig do
            params(
              data_type:
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::OrSymbol
            ).void
          end
          attr_writer :data_type

          # The label for this property as you'd like it displayed to users.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # An internal identifier for this property. This value must be unique TODO.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              value: String,
              data_type:
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::OrSymbol,
              label: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The value of the property
            value:,
            # Type of data represented by this property.
            data_type: nil,
            # The label for this property as you'd like it displayed to users.
            label: nil,
            # An internal identifier for this property. This value must be unique TODO.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                value: String,
                data_type:
                  HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol,
                label: String,
                name: String
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
                  HubSpotSDK::Crm::Extensions::ObjectToken::DataType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATE =
              T.let(
                :DATE,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :DATETIME,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            LINK =
              T.let(
                :LINK,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            NUMERIC =
              T.let(
                :NUMERIC,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STATUS =
              T.let(
                :STATUS,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STRING =
              T.let(
                :STRING,
                HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
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
