# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::AssociationsTest < HubspotSDK::Test::ResourceTest
  def test_delete_associations_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.delete_associations(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_request_high_usage_report
    skip("Mock server tests are disabled")

    response = @hubspot.crm.associations.request_high_usage_report(0)

    assert_pattern do
      response => HubspotSDK::Crm::ReportCreationResponse
    end

    assert_pattern do
      response => {
        enqueue_time: HubspotSDK::Crm::DateTime,
        user_email: String,
        user_id: Integer
      }
    end
  end

  def test_update_association_labels_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.associations.update_association_labels(
        "toObjectId",
        object_type: "objectType",
        object_id_: "objectId",
        to_object_type: "toObjectType",
        body: [{associationCategory: :HUBSPOT_DEFINED, associationTypeId: 0}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::LabelsBetweenObjectPair
    end

    assert_pattern do
      response => {
        from_object_id: String,
        from_object_type_id: String,
        labels: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        to_object_id: String,
        to_object_type_id: String
      }
    end
  end
end
