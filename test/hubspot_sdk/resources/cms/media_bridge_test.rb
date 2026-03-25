# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridgeTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create(create_mb_object_request: {mediaType: :VIDEO, title: "title"})

    assert_pattern do
      response => HubspotSDK::Cms::MediaBridgeObject
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        media_type: HubspotSDK::Cms::MediaBridgeObject::MediaType,
        title: String,
        updated_at: Time,
        details_page_link: String | nil,
        duration: Integer | nil,
        external_id: String | nil,
        file_url: String | nil,
        oembed_url: String | nil,
        poster_url: String | nil,
        thumbnail_url: String | nil,
        video: HubspotSDK::Cms::VideoObject | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.update(0, update_mb_object_request: {mediaType: :VIDEO})

    assert_pattern do
      response => HubspotSDK::Cms::MediaBridgeObject
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        media_type: HubspotSDK::Cms::MediaBridgeObject::MediaType,
        title: String,
        updated_at: Time,
        details_page_link: String | nil,
        duration: Integer | nil,
        external_id: String | nil,
        file_url: String | nil,
        oembed_url: String | nil,
        poster_url: String | nil,
        thumbnail_url: String | nil,
        video: HubspotSDK::Cms::VideoObject | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list(:AUDIO)

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::MediaBridgeObject
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        media_type: HubspotSDK::Cms::MediaBridgeObject::MediaType,
        title: String,
        updated_at: Time,
        details_page_link: String | nil,
        duration: Integer | nil,
        external_id: String | nil,
        file_url: String | nil,
        oembed_url: String | nil,
        poster_url: String | nil,
        thumbnail_url: String | nil,
        video: HubspotSDK::Cms::VideoObject | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.delete(0, media_type: :AUDIO)

    assert_pattern do
      response => nil
    end
  end

  def test_create_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_association(
        "objectType",
        app_id: "appId",
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
        is_default: HubspotSDK::Internal::Type::Boolean,
        is_inverse_primary: HubspotSDK::Internal::Type::Boolean,
        is_primary: HubspotSDK::Internal::Type::Boolean,
        max_from_object_ids: Integer,
        max_to_object_ids: Integer,
        name: String,
        portal_unique_identifier: String,
        read_only: HubspotSDK::Internal::Type::Boolean,
        to_object_type_id: String,
        from_object_type: HubspotSDK::Events::AssociationDefinition::FromObjectType | nil,
        hidden_reason: HubspotSDK::Events::AssociationDefinition::HiddenReason | nil,
        inverse_label: String | nil,
        label: String | nil,
        to_object_type: HubspotSDK::Events::AssociationDefinition::ToObjectType | nil
      }
    end
  end

  def test_create_attention_span_event_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_attention_span_event(
        media_type: :AUDIO,
        occurred_timestamp: 0,
        raw_data_map: {foo: 0},
        session_id: "sessionId"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_media_played_event_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_media_played_event(
        media_type: :AUDIO,
        occurred_timestamp: 0,
        session_id: "sessionId",
        state: :STARTED
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_media_played_percent_event_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_media_played_percent_event(
        media_type: :AUDIO,
        occurred_timestamp: 0,
        played_percent: 0,
        session_id: "sessionId"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_object_type_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.create_object_type("appId", media_types: [:VIDEO])

    assert_pattern do
      response => HubspotSDK::Cms::BulkIntegratorObjectCreationResponse
    end

    assert_pattern do
      response => {
        created_objects: ^(HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::IntegratorObjectCreationResponse])
      }
    end
  end

  def test_create_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_oembed_domain(
        "appId",
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubspotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Cms::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_create_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_property(
        "objectType",
        app_id: "appId",
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubspotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_create_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_property_group(
        "objectType",
        app_id: "appId",
        label: "label",
        name: "name"
      )

    assert_pattern do
      response => HubspotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_create_video_association_definition
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.create_video_association_definition("appId")

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
        is_default: HubspotSDK::Internal::Type::Boolean,
        is_inverse_primary: HubspotSDK::Internal::Type::Boolean,
        is_primary: HubspotSDK::Internal::Type::Boolean,
        max_from_object_ids: Integer,
        max_to_object_ids: Integer,
        name: String,
        portal_unique_identifier: String,
        read_only: HubspotSDK::Internal::Type::Boolean,
        to_object_type_id: String,
        from_object_type: HubspotSDK::Events::AssociationDefinition::FromObjectType | nil,
        hidden_reason: HubspotSDK::Events::AssociationDefinition::HiddenReason | nil,
        inverse_label: String | nil,
        label: String | nil,
        to_object_type: HubspotSDK::Events::AssociationDefinition::ToObjectType | nil
      }
    end
  end

  def test_delete_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.delete_association(
        "associationId",
        app_id: "appId",
        object_type: "objectType"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_delete_oembed_domain
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.delete_oembed_domain("appId")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.delete_property("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.delete_property_group("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get(0, media_type: :AUDIO)

    assert_pattern do
      response => HubspotSDK::Cms::MediaBridgeObject
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        media_type: HubspotSDK::Cms::MediaBridgeObject::MediaType,
        title: String,
        updated_at: Time,
        details_page_link: String | nil,
        duration: Integer | nil,
        external_id: String | nil,
        file_url: String | nil,
        oembed_url: String | nil,
        poster_url: String | nil,
        thumbnail_url: String | nil,
        video: HubspotSDK::Cms::VideoObject | nil
      }
    end
  end

  def test_get_event_visibility_settings
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_event_visibility_settings("appId")

    assert_pattern do
      response => HubspotSDK::Cms::EventVisibilityResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        visibility_settings: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::EventVisibilityChange])
      }
    end
  end

  def test_get_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_oembed_domain("oEmbedDomainId", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Cms::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_get_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.get_property("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubspotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_get_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.get_property_group("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_get_schema_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_schema("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubspotSDK::Internal::Type::Boolean,
        archived: HubspotSDK::Internal::Type::Boolean,
        associations: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubspotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1]),
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

  def test_list_object_types_by_media_type_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_object_types_by_media_type(:AUDIO, app_id: "appId")

    assert_pattern do
      response => HubspotSDK::Cms::ObjectDefinitionResponse
    end

    assert_pattern do
      response => {
        object_type_id: String,
        object_type_name: String,
        properties: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::PropertyDefinition]),
        property_groups: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::GroupView]),
        schema: HubspotSDK::Cms::InboundDBObjectType | nil
      }
    end
  end

  def test_list_oembed_domains
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_oembed_domains("appId")

    assert_pattern do
      response => HubspotSDK::Cms::OEmbedDomainsCollectionResponse
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::IntegratorOEmbedDomainModel]),
        total_count: Integer | nil
      }
    end
  end

  def test_list_properties_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_properties("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::CollectionResponsePropertyNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1])
      }
    end
  end

  def test_list_property_groups_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_property_groups("objectType", app_id: "appId")

    assert_pattern do
      response => HubspotSDK::CollectionResponsePropertyGroupNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PropertyGroup])
      }
    end
  end

  def test_list_schemas
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_schemas("appId")

    assert_pattern do
      response => HubspotSDK::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::ObjectSchema])
      }
    end
  end

  def test_register_app_name_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.register_app_name("appId", updated_at: 0)

    assert_pattern do
      response => HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        name: String
      }
    end
  end

  def test_update_event_visibility_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_event_visibility_settings("appId", event_type: :ALL, updated_at: 0)

    assert_pattern do
      response => HubspotSDK::Cms::EventVisibilityChange
    end

    assert_pattern do
      response => {
        event_type: HubspotSDK::Cms::EventVisibilityChange::EventType,
        updated_at: Integer,
        show_in_reporting: HubspotSDK::Internal::Type::Boolean | nil,
        show_in_timeline: HubspotSDK::Internal::Type::Boolean | nil,
        show_in_workflows: HubspotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_oembed_domain(
        "oEmbedDomainId",
        app_id: "appId",
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubspotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubspotSDK::Cms::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_update_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_property("propertyName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Property
    end

    assert_pattern do
      response => {
        description: String,
        field_type: String,
        group_name: String,
        label: String,
        name: String,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Option]),
        type: String,
        archived: HubspotSDK::Internal::Type::Boolean | nil,
        archived_at: Time | nil,
        calculated: HubspotSDK::Internal::Type::Boolean | nil,
        calculation_formula: String | nil,
        created_at: Time | nil,
        created_user_id: String | nil,
        data_sensitivity: HubspotSDK::Property::DataSensitivity | nil,
        date_display_hint: HubspotSDK::Property::DateDisplayHint | nil,
        display_order: Integer | nil,
        external_options: HubspotSDK::Internal::Type::Boolean | nil,
        form_field: HubspotSDK::Internal::Type::Boolean | nil,
        has_unique_value: HubspotSDK::Internal::Type::Boolean | nil,
        hidden: HubspotSDK::Internal::Type::Boolean | nil,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean | nil,
        modification_metadata: HubspotSDK::PropertyModificationMetadata | nil,
        referenced_object_type: String | nil,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]) | nil,
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean | nil,
        updated_at: Time | nil,
        updated_user_id: String | nil
      }
    end
  end

  def test_update_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_property_group("groupName", app_id: "appId", object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubspotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_update_schema_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_schema("objectType", app_id: "appId", clear_description: true)

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

  def test_update_settings_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.update_settings("appId", updated_at: 0)

    assert_pattern do
      response => HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        name: String
      }
    end
  end
end
