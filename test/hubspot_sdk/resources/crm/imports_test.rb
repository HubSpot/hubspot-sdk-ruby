# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::ImportsTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.create

    assert_pattern do
      response => HubspotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubspotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubspotSDK::Internal::Type::Boolean,
        state: HubspotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubspotSDK::Internal::Type::Unknown | nil,
        import_source: HubspotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubspotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_list_errors
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.list_errors(0)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Crm::PublicImportError
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Integer,
        error_type: HubspotSDK::Crm::PublicImportError::ErrorType,
        source_data: HubspotSDK::Crm::ImportRowCore,
        error_message: String | nil,
        extra_context: String | nil,
        invalid_property_value: HubspotSDK::PropertyValue | nil,
        invalid_value: String | nil,
        invalid_value_to_display: String | nil,
        known_column_number: Integer | nil,
        object_type: HubspotSDK::Crm::PublicImportError::ObjectType | nil,
        object_type_id: String | nil
      }
    end
  end
end
