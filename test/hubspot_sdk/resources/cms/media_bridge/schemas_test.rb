# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridge::SchemasTest < HubspotSDK::Test::ResourceTest
  def test_update_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.schemas.update("objectType", app_id: "appId")

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

    response = @hubspot.cms.media_bridge.schemas.list("appId")

    assert_pattern do
      response => HubspotSDK::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::ObjectSchema])
      }
    end
  end

  def test_create_association_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.schemas.create_association(
        "objectType",
        app_id: "appId",
        from_object_type_id: "fromObjectTypeId",
        to_object_type_id: "toObjectTypeId"
      )

    assert_pattern do
      response => HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse
    end

    assert_pattern do
      response => {
        id: Integer,
        allows_custom_labels: HubspotSDK::Internal::Type::Boolean,
        cardinality: HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse::Cardinality,
        category: HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse::Category,
        from_object_type_id: String,
        has_all_associated_objects: HubspotSDK::Internal::Type::Boolean,
        has_cascading_deletes: HubspotSDK::Internal::Type::Boolean,
        has_user_enforced_max_from_object_ids: HubspotSDK::Internal::Type::Boolean,
        has_user_enforced_max_to_object_ids: HubspotSDK::Internal::Type::Boolean,
        hidden: HubspotSDK::Internal::Type::Boolean,
        inverse_allows_custom_labels: HubspotSDK::Internal::Type::Boolean,
        inverse_cardinality: HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse::InverseCardinality,
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
        from_object_type: HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse::FromObjectType | nil,
        inverse_label: String | nil,
        label: String | nil,
        to_object_type: HubspotSDK::Models::Cms::MediaBridge::SchemaCreateAssociationResponse::ToObjectType | nil
      }
    end
  end

  def test_delete_association_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.cms.media_bridge.schemas.delete_association(
        "associationId",
        app_id: "appId",
        object_type: "objectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @hubspot.cms.media_bridge.schemas.get("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::CRM::Objects::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::ObjectSchema::Association]),
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
