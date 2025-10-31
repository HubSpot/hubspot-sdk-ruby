# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ObjectToken < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::ObjectToken,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :value

          sig do
            returns(
              T.nilable(
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            )
          end
          attr_reader :data_type

          sig do
            params(
              data_type:
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::OrSymbol
            ).void
          end
          attr_writer :data_type

          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              value: String,
              data_type:
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::OrSymbol,
              label: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(value:, data_type: nil, label: nil, name: nil)
          end

          sig do
            override.returns(
              {
                value: String,
                data_type:
                  HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol,
                label: String,
                name: String
              }
            )
          end
          def to_hash
          end

          module DataType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Extensions::ObjectToken::DataType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOOLEAN =
              T.let(
                :BOOLEAN,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :CURRENCY,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATE =
              T.let(
                :DATE,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            DATETIME =
              T.let(
                :DATETIME,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            EMAIL =
              T.let(
                :EMAIL,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            LINK =
              T.let(
                :LINK,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            NUMERIC =
              T.let(
                :NUMERIC,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STRING =
              T.let(
                :STRING,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )
            STATUS =
              T.let(
                :STATUS,
                HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Extensions::ObjectToken::DataType::TaggedSymbol
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
