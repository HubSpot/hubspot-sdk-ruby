# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Objects::SchemasTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.schemas.create(
        associated_objects: ["CONTACT"],
        labels: {},
        name: "my_object",
        properties: [
          {
            fieldType: "select",
            label: "My object property",
            name: "my_object_property",
            type: :enumeration
          }
        ],
        required_properties: ["my_object_property"]
      )

    assert_pattern do
      response => HubspotSDK::CRM::Objects::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        created_by_user_id: Integer | nil,
        description: String | nil,
        fully_qualified_name: String | nil,
        object_type_id: String | nil,
        primary_display_property: String | nil,
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil,
        updated_by_user_id: Integer | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.schemas.update("objectType")

    assert_pattern do
      response => HubspotSDK::CRM::Objects::ObjectTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        description: String | nil,
        fully_qualified_name: String | nil,
        object_type_id: String | nil,
        portal_id: Integer | nil,
        primary_display_property: String | nil,
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.schemas.list

    assert_pattern do
      response => HubspotSDK::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::ObjectSchema])
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.schemas.delete("objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_create_association_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.schemas.create_association(
        "objectType",
        from_object_type_id: "fromObjectTypeId",
        to_object_type_id: "toObjectTypeId"
      )

    assert_pattern do
      response => HubspotSDK::Events::AssociationDefinition
    end

    assert_pattern do
      response => {
        id: Integer,
        allows_custom_labels: HubspotSDK::Internal::Type::Boolean,
        cardinality: HubspotSDK::Events::AssociationDefinition::Cardinality,
        category: HubspotSDK::Events::AssociationDefinition::Category,
        from_object_type_id: String,
        has_all_associated_objects: HubspotSDK::Internal::Type::Boolean,
        has_cascading_deletes: HubspotSDK::Internal::Type::Boolean,
        has_user_enforced_max_from_object_ids: HubspotSDK::Internal::Type::Boolean,
        has_user_enforced_max_to_object_ids: HubspotSDK::Internal::Type::Boolean,
        hidden: HubspotSDK::Internal::Type::Boolean,
        inverse_allows_custom_labels: HubspotSDK::Internal::Type::Boolean,
        inverse_cardinality: HubspotSDK::Events::AssociationDefinition::InverseCardinality,
        inverse_has_all_associated_objects: HubspotSDK::Internal::Type::Boolean,
        inverse_id: Integer,
        inverse_name: String,
        is_inverse_primary: HubspotSDK::Internal::Type::Boolean,
        is_primary: HubspotSDK::Internal::Type::Boolean,
        max_from_object_ids: Integer,
        max_to_object_ids: Integer,
        name: String,
        portal_unique_identifier: String,
        to_object_type_id: String,
        from_object_type: HubspotSDK::Events::AssociationDefinition::FromObjectType | nil,
        inverse_label: String | nil,
        label: String | nil,
        to_object_type: HubspotSDK::Events::AssociationDefinition::ToObjectType | nil
      }
    end
  end

  def test_delete_association_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.schemas.delete_association("associationIdentifier", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.objects.schemas.get("objectType")

    assert_pattern do
      response => HubspotSDK::CRM::Objects::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property]),
        required_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        created_at: Time | nil,
        created_by_user_id: Integer | nil,
        description: String | nil,
        fully_qualified_name: String | nil,
        object_type_id: String | nil,
        primary_display_property: String | nil,
        searchable_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        secondary_display_properties: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        updated_at: Time | nil,
        updated_by_user_id: Integer | nil
      }
    end
  end
end
