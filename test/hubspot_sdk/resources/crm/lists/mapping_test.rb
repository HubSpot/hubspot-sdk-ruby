# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Lists::MappingTest < HubspotSDK::Test::ResourceTest
  def test_batch_create_id_mapping_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.mapping.batch_create_id_mapping(body: ["string"])

    assert_pattern do
      response => HubspotSDK::CRM::PublicBatchMigrationMapping
    end

    assert_pattern do
      response => {
        legacy_list_ids_to_ids_mapping: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicMigrationMapping]),
        missing_legacy_list_ids: ^(HubspotSDK::Internal::Type::ArrayOf[String])
      }
    end
  end

  def test_get_id_mapping
    skip("Prism tests are disabled")

    response = @hub_spot.crm.lists.mapping.get_id_mapping

    assert_pattern do
      response => HubspotSDK::CRM::PublicMigrationMapping
    end

    assert_pattern do
      response => {
        legacy_list_id: String,
        list_id: String
      }
    end
  end
end
