# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class HubSpotFormDefinitionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::HubSpotFormDefinitionPatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether this form is archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          returns(T.nilable(HubspotSDK::Marketing::HubSpotFormConfiguration))
        end
        attr_reader :configuration

        sig do
          params(
            configuration:
              HubspotSDK::Marketing::HubSpotFormConfiguration::OrHash
          ).void
        end
        attr_writer :configuration

        # Options for styling the form.
        sig { returns(T.nilable(HubspotSDK::Marketing::FormDisplayOptions)) }
        attr_reader :display_options

        sig do
          params(
            display_options: HubspotSDK::Marketing::FormDisplayOptions::OrHash
          ).void
        end
        attr_writer :display_options

        # The fields in the form, grouped in rows.
        sig { returns(T.nilable(T::Array[HubspotSDK::Marketing::FieldGroup])) }
        attr_reader :field_groups

        sig do
          params(
            field_groups: T::Array[HubspotSDK::Marketing::FieldGroup::OrHash]
          ).void
        end
        attr_writer :field_groups

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess
              )
            )
          )
        end
        attr_reader :legal_consent_options

        sig do
          params(
            legal_consent_options:
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess::OrHash
              )
          ).void
        end
        attr_writer :legal_consent_options

        # The name of the form. Expected to be unique for a hub.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            archived: T::Boolean,
            configuration:
              HubspotSDK::Marketing::HubSpotFormConfiguration::OrHash,
            display_options: HubspotSDK::Marketing::FormDisplayOptions::OrHash,
            field_groups: T::Array[HubspotSDK::Marketing::FieldGroup::OrHash],
            legal_consent_options:
              T.any(
                HubspotSDK::Marketing::LegalConsentOptionsNone::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::OrHash,
                HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess::OrHash
              ),
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether this form is archived.
          archived: nil,
          configuration: nil,
          # Options for styling the form.
          display_options: nil,
          # The fields in the form, grouped in rows.
          field_groups: nil,
          legal_consent_options: nil,
          # The name of the form. Expected to be unique for a hub.
          name: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
              display_options: HubspotSDK::Marketing::FormDisplayOptions,
              field_groups: T::Array[HubspotSDK::Marketing::FieldGroup],
              legal_consent_options:
                T.any(
                  HubspotSDK::Marketing::LegalConsentOptionsNone,
                  HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest,
                  HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
                  HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess
                ),
              name: String
            }
          )
        end
        def to_hash
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
                HubspotSDK::Marketing::HubSpotFormDefinitionPatchRequest::LegalConsentOptions::Variants
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
