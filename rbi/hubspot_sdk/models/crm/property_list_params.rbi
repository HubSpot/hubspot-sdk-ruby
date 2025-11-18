# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertyListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertyListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(
            T.nilable(
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        sig do
          params(
            archived: T::Boolean,
            data_sensitivity:
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::OrSymbol,
            locale: String,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to return only results that have been archived.
          archived: nil,
          data_sensitivity: nil,
          locale: nil,
          properties: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              data_sensitivity:
                HubspotSDK::Crm::PropertyListParams::DataSensitivity::OrSymbol,
              locale: String,
              properties: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PropertyListParams::DataSensitivity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::TaggedSymbol
            )
          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::Crm::PropertyListParams::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PropertyListParams::DataSensitivity::TaggedSymbol
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
