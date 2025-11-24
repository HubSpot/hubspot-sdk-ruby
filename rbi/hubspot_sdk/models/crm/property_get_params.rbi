# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PropertyGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PropertyGetParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(
            T.nilable(
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::OrSymbol
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
            object_type: String,
            archived: T::Boolean,
            data_sensitivity:
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::OrSymbol,
            locale: String,
            properties: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type:,
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
              object_type: String,
              archived: T::Boolean,
              data_sensitivity:
                HubspotSDK::Crm::PropertyGetParams::DataSensitivity::OrSymbol,
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
              T.all(Symbol, HubspotSDK::Crm::PropertyGetParams::DataSensitivity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::TaggedSymbol
            )
          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::Crm::PropertyGetParams::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PropertyGetParams::DataSensitivity::TaggedSymbol
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
