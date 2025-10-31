# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class FormDefinitionCreateRequestBase < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute configuration
        #
        #   @return [HubspotSDK::Models::Marketing::HubSpotFormConfiguration]
        required :configuration, -> { HubspotSDK::Marketing::HubSpotFormConfiguration }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute display_options
        #   Options for styling the form.
        #
        #   @return [HubspotSDK::Models::Marketing::FormDisplayOptions]
        required :display_options, -> { HubspotSDK::Marketing::FormDisplayOptions }, api_name: :displayOptions

        # @!attribute field_groups
        #
        #   @return [Array<HubspotSDK::Models::Marketing::FieldGroup>]
        required :field_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup] },
                 api_name: :fieldGroups

        # @!attribute form_type
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FormDefinitionCreateRequestBase::FormType]
        required :form_type,
                 enum: -> { HubspotSDK::Marketing::FormDefinitionCreateRequestBase::FormType },
                 api_name: :formType

        # @!attribute legal_consent_options
        #
        #   @return [HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess]
        required :legal_consent_options,
                 union: -> { HubspotSDK::Marketing::FormDefinitionCreateRequestBase::LegalConsentOptions },
                 api_name: :legalConsentOptions

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!method initialize(archived:, configuration:, created_at:, display_options:, field_groups:, form_type:, legal_consent_options:, name:, updated_at:, archived_at: nil)
        #   @param archived [Boolean]
        #
        #   @param configuration [HubspotSDK::Models::Marketing::HubSpotFormConfiguration]
        #
        #   @param created_at [Time]
        #
        #   @param display_options [HubspotSDK::Models::Marketing::FormDisplayOptions] Options for styling the form.
        #
        #   @param field_groups [Array<HubspotSDK::Models::Marketing::FieldGroup>]
        #
        #   @param form_type [Symbol, HubspotSDK::Models::Marketing::FormDefinitionCreateRequestBase::FormType]
        #
        #   @param legal_consent_options [HubspotSDK::Models::Marketing::LegalConsentOptionsNone, HubspotSDK::Models::Marketing::LegalConsentOptionsLegitimateInterest, HubspotSDK::Models::Marketing::LegalConsentOptionsExplicitConsentToProcess, HubspotSDK::Models::Marketing::LegalConsentOptionsImplicitConsentToProcess]
        #
        #   @param name [String]
        #
        #   @param updated_at [Time]
        #
        #   @param archived_at [Time]

        # @see HubspotSDK::Models::Marketing::FormDefinitionCreateRequestBase#form_type
        module FormType
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT = :hubspot

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Marketing::FormDefinitionCreateRequestBase#legal_consent_options
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
