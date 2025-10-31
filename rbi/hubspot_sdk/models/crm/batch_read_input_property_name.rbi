# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchReadInputPropertyName < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchReadInputPropertyName,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(T::Array[HubspotSDK::PropertyName]) }
        attr_accessor :inputs

        sig do
          returns(
            T.nilable(
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::OrSymbol
            )
          )
        end
        attr_reader :data_sensitivity

        sig do
          params(
            data_sensitivity:
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::OrSymbol
          ).void
        end
        attr_writer :data_sensitivity

        sig do
          params(
            archived: T::Boolean,
            inputs: T::Array[HubspotSDK::PropertyName::OrHash],
            data_sensitivity:
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(archived:, inputs:, data_sensitivity: nil)
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              inputs: T::Array[HubspotSDK::PropertyName],
              data_sensitivity:
                HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::OrSymbol
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
                HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NON_SENSITIVE =
            T.let(
              :non_sensitive,
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :sensitive,
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
            )
          HIGHLY_SENSITIVE =
            T.let(
              :highly_sensitive,
              HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::BatchReadInputPropertyName::DataSensitivity::TaggedSymbol
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
