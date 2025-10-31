# frozen_string_literal: true

require_relative "../../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Associations::Schema::V4::DefinitionsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.definitions.create(
        "toObjectType",
        from_object_type: "fromObjectType",
        label: "label",
        name: "name"
      )

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationSpecWithLabel])
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.definitions.update(
        "toObjectType",
        from_object_type: "fromObjectType",
        association_type_id: 0,
        label: "label"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.definitions.list(
        "toObjectType",
        from_object_type: "fromObjectType"
      )

    assert_pattern do
      response => HubspotSDK::CRM::Associations::Schema::CollectionResponseAssociationSpecWithLabelNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationSpecWithLabel])
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.crm.associations.schema.v4.definitions.delete(
        0,
        from_object_type: "fromObjectType",
        to_object_type: "toObjectType"
      )

    assert_pattern do
      response => nil
    end
  end
end
