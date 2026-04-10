# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::ImportsTest < HubSpotSDK::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.create

    assert_pattern do
      response => HubSpotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubSpotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubSpotSDK::Internal::Type::Boolean,
        state: HubSpotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubSpotSDK::Internal::Type::Unknown | nil,
        import_source: HubSpotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubSpotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubSpotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubSpotSDK::Internal::Type::Boolean,
        state: HubSpotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubSpotSDK::Internal::Type::Unknown | nil,
        import_source: HubSpotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubSpotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_cancel
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.cancel(0)

    assert_pattern do
      response => HubSpotSDK::ActionResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubSpotSDK::ActionResponse::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.get(0)

    assert_pattern do
      response => HubSpotSDK::Crm::PublicImportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        mapped_object_type_ids: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        metadata: HubSpotSDK::Crm::PublicImportMetadata,
        opt_out_import: HubSpotSDK::Internal::Type::Boolean,
        state: HubSpotSDK::Crm::PublicImportResponse::State,
        updated_at: Time,
        import_name: String | nil,
        import_request_json: HubSpotSDK::Internal::Type::Unknown | nil,
        import_source: HubSpotSDK::Crm::PublicImportResponse::ImportSource | nil,
        import_template: HubSpotSDK::Crm::ImportTemplate | nil
      }
    end
  end

  def test_list_errors
    skip("Mock server tests are disabled")

    response = @hubspot.crm.imports.list_errors(0)

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Crm::PublicImportError
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Integer,
        error_type: HubSpotSDK::Crm::PublicImportError::ErrorType,
        source_data: HubSpotSDK::Crm::ImportRowCore,
        error_message: String | nil,
        extra_context: String | nil,
        invalid_property_value: HubSpotSDK::PropertyValue | nil,
        invalid_value: String | nil,
        invalid_value_to_display: String | nil,
        known_column_number: Integer | nil,
        object_type: HubSpotSDK::Crm::PublicImportError::ObjectType | nil,
        object_type_id: String | nil
      }
    end
  end
end
