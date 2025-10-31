# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FormDefinitionCreateRequestBase < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FormDefinitionCreateRequestBase,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(HubspotSDK::Marketing::HubSpotFormConfiguration) }
        attr_reader :configuration

        sig do
          params(
            configuration:
              HubspotSDK::Marketing::HubSpotFormConfiguration::OrHash
          ).void
        end
        attr_writer :configuration

        sig { returns(Time) }
        attr_accessor :created_at

        # Options for styling the form.
        sig { returns(HubspotSDK::Marketing::FormDisplayOptions) }
        attr_reader :display_options

        sig do
          params(
            display_options: HubspotSDK::Marketing::FormDisplayOptions::OrHash
          ).void
        end
        attr_writer :display_options

        sig { returns(T::Array[HubspotSDK::Marketing::FieldGroup]) }
        attr_accessor :field_groups

        sig do
          returns(
            HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType::OrSymbol
          )
        end
        attr_accessor :form_type

        sig do
          returns(
            T.any(
              HubspotSDK::Marketing::LegalConsentOptionsNone,
              HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
              HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
              HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess
            )
          )
        end
        attr_accessor :legal_consent_options

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig do
          params(
            archived: T::Boolean,
            configuration:
              HubspotSDK::Marketing::HubSpotFormConfiguration::OrHash,
            created_at: Time,
            display_options: HubspotSDK::Marketing::FormDisplayOptions::OrHash,
            field_groups: T::Array[HubspotSDK::Marketing::FieldGroup::OrHash],
            form_type:
              HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType::OrSymbol,
            legal_consent_options:
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess::OrHash
              ),
            name: String,
            updated_at: Time,
            archived_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          archived:,
          configuration:,
          created_at:,
          # Options for styling the form.
          display_options:,
          field_groups:,
          form_type:,
          legal_consent_options:,
          name:,
          updated_at:,
          archived_at: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
              created_at: Time,
              display_options: HubspotSDK::Marketing::FormDisplayOptions,
              field_groups: T::Array[HubspotSDK::Marketing::FieldGroup],
              form_type:
                HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType::OrSymbol,
              legal_consent_options:
                T.any(
                  HubspotSDK::Marketing::LegalConsentOptionsNone,
                  HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
                  HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
                  HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess
                ),
              name: String,
              updated_at: Time,
              archived_at: Time
            }
          )
        end
        def to_hash
        end

        module FormType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT =
            T.let(
              :hubspot,
              HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module LegalConsentOptions
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormDefinitionCreateRequestBase::LegalConsentOptions::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
