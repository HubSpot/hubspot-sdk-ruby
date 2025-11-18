# frozen_string_literal: true

require_relative "../../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Associations::Schema::V4::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_create_label_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.definitions.create_label(
        "toObjectType",
        from_object_type: "fromObjectType",
        label: "label",
        name: "name"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel]),
        paging: HubspotSDK::Paging | nil
      }
    end
  end

  def test_delete_label_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.definitions.delete_label(
        0,
        from_object_type: "fromObjectType",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_labels_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.definitions.list_labels(
        "toObjectType",
        from_object_type: "fromObjectType"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Associations::Schema::CollectionResponseAssociationSpecWithLabel
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel]),
        paging: HubspotSDK::Paging | nil
      }
    end
  end

  def test_update_label_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.associations.schema.v4.definitions.update_label(
        "toObjectType",
        from_object_type: "fromObjectType",
        association_type_id: 0,
        label: "label"
      )

    assert_pattern do
      response => nil
    end
  end
end
