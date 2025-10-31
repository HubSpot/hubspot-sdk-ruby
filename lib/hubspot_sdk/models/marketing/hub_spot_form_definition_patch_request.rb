# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class HubSpotFormDefinitionPatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #   Whether this form is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute configuration
        #
        #   @return [HubspotSDK::Models::Marketing::HubSpotFormConfiguration, nil]
        optional :configuration, -> { HubspotSDK::Marketing::HubSpotFormConfiguration }

        # @!attribute display_options
        #   Options for styling the form.
        #
        #   @return [HubspotSDK::Models::Marketing::FormDisplayOptions, nil]
        optional :display_options, -> { HubspotSDK::Marketing::FormDisplayOptions }, api_name: :displayOptions

        # @!attribute field_groups
        #   The fields in the form, grouped in rows.
        #
        #   @return [Array<HubspotSDK::Models::Marketing::FieldGroup>, nil]
        optional :field_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup] },
                 api_name: :fieldGroups

        # @!attribute legal_consent_options
        #
        #   @return [HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess, nil]
        optional :legal_consent_options,
                 union: -> { HubspotSDK::Marketing::HubSpotFormDefinitionPatchRequest::LegalConsentOptions },
                 api_name: :legalConsentOptions

        # @!attribute name
        #   The name of the form. Expected to be unique for a hub.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(archived: nil, configuration: nil, display_options: nil, field_groups: nil, legal_consent_options: nil, name: nil)
        #   @param archived [Boolean] Whether this form is archived.
        #
        #   @param configuration [HubspotSDK::Models::Marketing::HubSpotFormConfiguration]
        #
        #   @param display_options [HubspotSDK::Models::Marketing::FormDisplayOptions] Options for styling the form.
        #
        #   @param field_groups [Array<HubspotSDK::Models::Marketing::FieldGroup>] The fields in the form, grouped in rows.
        #
        #   @param legal_consent_options [HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess]
        #
        #   @param name [String] The name of the form. Expected to be unique for a hub.

        # @see HubspotSDK::Models::Marketing::HubSpotFormDefinitionPatchRequest#legal_consent_options
        module LegalConsentOptions
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Marketing::LegalConsentOptionsNone }

          variant -> { HubspotSDK::Marketing::LegalConsentOptionsLegitimateInterest }

          variant -> { HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess }

          variant -> { HubspotSDK::Marketing::LegalConsentOptionsImplicitConsentToProcess }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess)]
        end
      end
    end
  end
end
