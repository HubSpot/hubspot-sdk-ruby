# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ObjectToken < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ObjectToken,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The value of the property
          sig { returns(String) }
          attr_accessor :value

          # The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK,
          # NUMERIC, STATUS
          sig do
            returns(
              T.nilable(
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            )
          end
          attr_reader :data_type

          sig do
            params(
              data_type:
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::OrSymbol
            ).void
          end
          attr_writer :data_type

          # The label of the property as it will be displayed to users
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # The name of the property
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              value: String,
              data_type:
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::OrSymbol,
              label: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The value of the property
            value:,
            # The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK,
            # NUMERIC, STATUS
            data_type: nil,
            # The label of the property as it will be displayed to users
            label: nil,
            # The name of the property
            name: nil
          )
          end

          sig do
            override.returns(
              {
                value: String,
                data_type:
                  HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol,
                label: String,
                name: String
              }
            )
          end
          def to_hash
          end

          # The type of the property. Can be one of CURRENCY, DATE, DATETIME, EMAIL, LINK,
          # NUMERIC, STATUS
          module DataType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::ObjectToken::DataType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATE =
              T.let(
                :DATE,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :DATETIME,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            LINK =
              T.let(
                :LINK,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            NUMERIC =
              T.let(
                :NUMERIC,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STATUS =
              T.let(
                :STATUS,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STRING =
              T.let(
                :STRING,
                HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::ObjectToken::DataType::TaggedSymbol
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
