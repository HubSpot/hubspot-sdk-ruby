# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::CRM::ImportsTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @hubspot.crm.imports.create

    assert_pattern do
      response => HubspotSDK::CRM::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::CRM::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::CRM::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::CRM::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::CRM::ImportTemplate | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.imports.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::CRM::PublicImportResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::CRM::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::CRM::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::CRM::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::CRM::ImportTemplate | nil
      }
    end
  end

  def test_cancel
    skip("Prism tests are disabled")

    response = @hubspot.crm.imports.cancel(0)

    assert_pattern do
      response => HubspotSDK::ActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::ActionResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.imports.get(0)

    assert_pattern do
      response => HubspotSDK::CRM::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::CRM::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::CRM::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::CRM::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::CRM::ImportTemplate | nil
      }
    end
  end

  def test_list_errors
    skip("Prism tests are disabled")

    response = @hubspot.crm.imports.list_errors(0)

    assert_pattern do
      response => HubspotSDK::CRM::CollectionResponsePublicImportErrorForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicImportError]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end
end
