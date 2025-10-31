# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Marketing::FormsTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.create

    assert_pattern do
      response => HubspotSDK::Marketing::FormDefinitionBase
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
        created_at: Time,
        display_options: HubspotSDK::Marketing::FormDisplayOptions,
        field_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup]),
        form_type: HubspotSDK::Marketing::FormDefinitionBase::FormType,
        legal_consent_options: HubspotSDK::Marketing::FormDefinitionBase::LegalConsentOptions,
        name: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.update("formId")

    assert_pattern do
      response => HubspotSDK::Marketing::FormDefinitionBase
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
        created_at: Time,
        display_options: HubspotSDK::Marketing::FormDisplayOptions,
        field_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup]),
        form_type: HubspotSDK::Marketing::FormDefinitionBase::FormType,
        legal_consent_options: HubspotSDK::Marketing::FormDefinitionBase::LegalConsentOptions,
        name: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Marketing::HubSpotFormDefinition
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
        created_at: Time,
        display_options: HubspotSDK::Marketing::FormDisplayOptions,
        field_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup]),
        form_type: HubspotSDK::Marketing::HubSpotFormDefinition::FormType,
        legal_consent_options: HubspotSDK::Marketing::HubSpotFormDefinition::LegalConsentOptions,
        name: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.delete("formId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.get("formId")

    assert_pattern do
      response => HubspotSDK::Marketing::FormDefinitionBase
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
        created_at: Time,
        display_options: HubspotSDK::Marketing::FormDisplayOptions,
        field_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup]),
        form_type: HubspotSDK::Marketing::FormDefinitionBase::FormType,
        legal_consent_options: HubspotSDK::Marketing::FormDefinitionBase::LegalConsentOptions,
        name: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end

  def test_replace
    skip("Prism tests are disabled")

    response = @hubspot.marketing.forms.replace("formId")

    assert_pattern do
      response => HubspotSDK::Marketing::FormDefinitionBase
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        configuration: HubspotSDK::Marketing::HubSpotFormConfiguration,
        created_at: Time,
        display_options: HubspotSDK::Marketing::FormDisplayOptions,
        field_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::FieldGroup]),
        form_type: HubspotSDK::Marketing::FormDefinitionBase::FormType,
        legal_consent_options: HubspotSDK::Marketing::FormDefinitionBase::LegalConsentOptions,
        name: String,
        updated_at: Time,
        archived_at: Time | nil
      }
    end
  end
end
