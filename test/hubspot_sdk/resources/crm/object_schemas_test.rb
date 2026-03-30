# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::ObjectSchemasTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.object_schemas.create(
        allows_sensitive_properties: true,
        associated_objects: ["string"],
        labels: {},
        name: "name",
        properties: [{fieldType: "fieldType", label: "label", name: "name", type: :bool}],
        required_properties: ["string"],
        searchable_properties: ["string"],
        secondary_display_properties: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::Crm::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        created_at: Time | nil,
        created_by_user_id: Integer | nil,
        description: String | nil,
        primary_display_property: String | nil,
        updated_at: Time | nil,
        updated_by_user_id: Integer | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_schemas.update("objectType", clear_description: true)

    assert_pattern do
      response => HubspotSDK::ObjectTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        fully_qualified_name: String,
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        created_at: Time | nil,
        description: String | nil,
        portal_id: Integer | nil,
        primary_display_property: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_schemas.list

    assert_pattern do
      response => HubspotSDK::Crm::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ObjectSchema])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_schemas.delete("objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_create_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.object_schemas.create_association(
        "objectType",
        from_object_type_id: "fromObjectTypeId",
        to_object_type_id: "toObjectTypeId"
      )

    assert_pattern do
      response => HubspotSDK::AssociationDefinition
    end

    assert_pattern do
      response => {
        id: String,
        from_object_type_id: String,
        to_object_type_id: String,
        created_at: Time | nil,
        name: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.object_schemas.delete_association("associationIdentifier", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.object_schemas.get("objectType")

    assert_pattern do
      response => HubspotSDK::Crm::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        created_at: Time | nil,
        created_by_user_id: Integer | nil,
        description: String | nil,
        primary_display_property: String | nil,
        updated_at: Time | nil,
        updated_by_user_id: Integer | nil
      }
    end
  end
end
