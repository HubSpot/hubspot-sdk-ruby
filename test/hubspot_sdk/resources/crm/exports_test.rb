# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::ExportsTest < HubspotSDK::Test::ResourceTest
  def test_create_async_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.exports.create_async(
        public_export_request: {
          associatedObjectType: ["string"],
          exportInternalValuesOptions: [:NAMES],
          exportName: "exportName",
          exportType: :VIEW,
          format: :XLS,
          includeLabeledAssociations: true,
          includePrimaryDisplayPropertyForAssociatedObjects: true,
          language: :EN,
          objectProperties: ["string"],
          objectType: "objectType",
          overrideAssociatedObjectsPerDefinitionPerRowLimit: true
        }
      )

    assert_pattern do
      response => HubspotSDK::TaskLocator
    end

    assert_pattern do
      response => {
        id: String,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.exports.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::PublicExportResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        export_state: HubspotSDK::Crm::PublicExportResponse::ExportState,
        export_type: HubspotSDK::Crm::PublicExportResponse::ExportType,
        object_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        object_type: String,
        updated_at: Time,
        export_name: String | nil,
        record_count: Integer | nil
      }
    end
  end

  def test_get_status
    skip("Mock server tests are disabled")

    response = @hubspot.crm.exports.get_status(0)

    assert_pattern do
      response => HubspotSDK::Crm::ActionResponseWithSingleResultUri
    end

    assert_pattern do
      response => {
        completed_at: Time,
        started_at: Time,
        status: HubspotSDK::Crm::ActionResponseWithSingleResultUri::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil,
        result: String | nil
      }
    end
  end
end
