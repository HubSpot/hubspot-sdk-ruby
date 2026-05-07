# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::MediaBridgeTest < HubSpotSDK::Test::ResourceTest
  def test_create_association_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_association(
        "objectType",
        app_id: 0,
        from_object_type_id: "fromObjectTypeId",
        to_object_type_id: "toObjectTypeId"
      )

    assert_pattern do
      response => HubSpotSDK::AssociationDefinition
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
      response => HubSpotSDK::Cms::AttentionSpanEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubSpotSDK::Cms::AttentionSpanEvent::MediaType,
        occurred_timestamp: Integer,
        percent_range: String,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        total_percent_played: Float,
        external_play_context: HubSpotSDK::Cms::AttentionSpanEvent::ExternalPlayContext | nil,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil,
        raw_data: String | nil,
        total_seconds_played: Integer | nil
      }
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
      response => HubSpotSDK::Cms::MediaPlayedEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubSpotSDK::Cms::MediaPlayedEvent::MediaType,
        occurred_timestamp: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        state: HubSpotSDK::Cms::MediaPlayedEvent::State,
        external_play_context: HubSpotSDK::Cms::MediaPlayedEvent::ExternalPlayContext | nil,
        iframe_url: String | nil,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil
      }
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
      response => HubSpotSDK::Cms::MediaPlayedPercentageEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubSpotSDK::Cms::MediaPlayedPercentageEvent::MediaType,
        occurred_timestamp: Integer,
        played_percent: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        external_play_context: HubSpotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext | nil,
        media_url: String | nil,
        page_id: Integer | nil,
        page_name: String | nil,
        page_object_coordinates: String | nil,
        page_url: String | nil
      }
    end
  end

  def test_create_object_type_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.create_object_type(0, media_types: [:VIDEO])

    assert_pattern do
      response => HubSpotSDK::Cms::BulkIntegratorObjectCreationResponse
    end

    assert_pattern do
      response => {
        created_objects: ^(HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::IntegratorObjectCreationResponse])
      }
    end
  end

  def test_create_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_oembed_domain(
        0,
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubSpotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubSpotSDK::Cms::Endpoints,
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
        app_id: 0,
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubSpotSDK::Cms::MediaBridgeProperty
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubSpotSDK::Internal::Type::Boolean,
        can_archive: HubSpotSDK::Internal::Type::Boolean,
        can_restore: HubSpotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity,
        date_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubSpotSDK::Internal::Type::Boolean,
        external_options: HubSpotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubSpotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubSpotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean,
        hidden: HubSpotSDK::Internal::Type::Boolean,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean,
        is_customized_default: HubSpotSDK::Internal::Type::Boolean,
        is_multi_valued: HubSpotSDK::Internal::Type::Boolean,
        is_partial: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AutomationActionsOption]),
        options_are_mutable: HubSpotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubSpotSDK::Internal::Type::Boolean,
        read_only_value: HubSpotSDK::Internal::Type::Boolean,
        referenced_object_type: HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType,
        searchable_in_global_search: HubSpotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean,
        text_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint,
        type: HubSpotSDK::Cms::MediaBridgeProperty::Type,
        updated_at: Integer
      }
    end
  end

  def test_create_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_property_group("objectType", app_id: 0, label: "label", name: "name")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_create_video_association_definition
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.create_video_association_definition(0)

    assert_pattern do
      response => HubSpotSDK::AssociationDefinition
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
      @hubspot.cms.media_bridge.delete_association("associationId", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_oembed_domain
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.delete_oembed_domain(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.delete_property("propertyName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.delete_property_group("groupName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => nil
    end
  end

  def test_get_event_visibility_settings
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_event_visibility_settings(0)

    assert_pattern do
      response => HubSpotSDK::Cms::EventVisibilityResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        visibility_settings: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::EventVisibilityChange])
      }
    end
  end

  def test_get_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_oembed_domain("oEmbedDomainId", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubSpotSDK::Cms::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_get_property_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_property("propertyName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Cms::MediaBridgeProperty
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubSpotSDK::Internal::Type::Boolean,
        can_archive: HubSpotSDK::Internal::Type::Boolean,
        can_restore: HubSpotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity,
        date_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubSpotSDK::Internal::Type::Boolean,
        external_options: HubSpotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubSpotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubSpotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean,
        hidden: HubSpotSDK::Internal::Type::Boolean,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean,
        is_customized_default: HubSpotSDK::Internal::Type::Boolean,
        is_multi_valued: HubSpotSDK::Internal::Type::Boolean,
        is_partial: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AutomationActionsOption]),
        options_are_mutable: HubSpotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubSpotSDK::Internal::Type::Boolean,
        read_only_value: HubSpotSDK::Internal::Type::Boolean,
        referenced_object_type: HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType,
        searchable_in_global_search: HubSpotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean,
        text_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint,
        type: HubSpotSDK::Cms::MediaBridgeProperty::Type,
        updated_at: Integer
      }
    end
  end

  def test_get_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.get_property_group("groupName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_get_schema_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.get_schema("objectType", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::ObjectSchema
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubSpotSDK::Internal::Type::Boolean,
        archived: HubSpotSDK::Internal::Type::Boolean,
        associations: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AssociationDefinition]),
        fully_qualified_name: String,
        labels: HubSpotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property1]),
        required_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        searchable_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        secondary_display_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
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

    response = @hubspot.cms.media_bridge.list_object_types_by_media_type(:AUDIO, app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::ObjectDefinitionResponse
    end

    assert_pattern do
      response => {
        object_type_id: String,
        object_type_name: String,
        properties: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PropertyDefinition]),
        property_groups: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::GroupView]),
        schema: HubSpotSDK::Cms::InboundDBObjectType | nil
      }
    end
  end

  def test_list_oembed_domains
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_oembed_domains(0)

    assert_pattern do
      response => HubSpotSDK::Cms::OEmbedDomainsCollectionResponse
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::IntegratorOEmbedDomainModel]),
        total_count: Integer | nil
      }
    end
  end

  def test_list_properties_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_properties("objectType", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::CollectionResponsePropertyNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property1])
      }
    end
  end

  def test_list_property_groups_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_property_groups("objectType", app_id: 0)

    assert_pattern do
      response => HubSpotSDK::CollectionResponsePropertyGroupNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::PropertyGroup])
      }
    end
  end

  def test_list_schemas
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_schemas(0)

    assert_pattern do
      response => HubSpotSDK::Cms::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ObjectSchema])
      }
    end
  end

  def test_register_app_name_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.register_app_name(0, updated_at: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse
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

    response = @hubspot.cms.media_bridge.update_event_visibility_settings(0, event_type: :ALL, updated_at: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::EventVisibilityChange
    end

    assert_pattern do
      response => {
        event_type: HubSpotSDK::Cms::EventVisibilityChange::EventType,
        updated_at: Integer,
        show_in_reporting: HubSpotSDK::Internal::Type::Boolean | nil,
        show_in_timeline: HubSpotSDK::Internal::Type::Boolean | nil,
        show_in_workflows: HubSpotSDK::Internal::Type::Boolean | nil
      }
    end
  end

  def test_update_oembed_domain_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_oembed_domain(
        "oEmbedDomainId",
        app_id: 0,
        endpoints: {discovery: true, schemes: ["string"], url: "url"}
      )

    assert_pattern do
      response => HubSpotSDK::Cms::IntegratorOEmbedDomainModel
    end

    assert_pattern do
      response => {
        id: Integer,
        app_id: Integer,
        created_at: Integer,
        deleted_at: Integer,
        endpoints: HubSpotSDK::Cms::Endpoints,
        portal_id: Integer,
        updated_at: Integer
      }
    end
  end

  def test_update_property_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_property("propertyName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::Cms::MediaBridgeProperty
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubSpotSDK::Internal::Type::Boolean,
        can_archive: HubSpotSDK::Internal::Type::Boolean,
        can_restore: HubSpotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubSpotSDK::Cms::MediaBridgeProperty::DataSensitivity,
        date_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::DateDisplayHint,
        deleted: HubSpotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubSpotSDK::Cms::MediaBridgeProperty::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubSpotSDK::Internal::Type::Boolean,
        external_options: HubSpotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubSpotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubSpotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubSpotSDK::Internal::Type::Boolean,
        hidden: HubSpotSDK::Internal::Type::Boolean,
        hubspot_defined: HubSpotSDK::Internal::Type::Boolean,
        is_customized_default: HubSpotSDK::Internal::Type::Boolean,
        is_multi_valued: HubSpotSDK::Internal::Type::Boolean,
        is_partial: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubSpotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::NumberDisplayHint,
        options: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::AutomationActionsOption]),
        options_are_mutable: HubSpotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubSpotSDK::Cms::MediaBridgeProperty::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubSpotSDK::Internal::Type::Boolean,
        read_only_value: HubSpotSDK::Internal::Type::Boolean,
        referenced_object_type: HubSpotSDK::Cms::MediaBridgeProperty::ReferencedObjectType,
        searchable_in_global_search: HubSpotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubSpotSDK::Cms::MediaBridgeProperty::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubSpotSDK::Internal::Type::Boolean,
        text_display_hint: HubSpotSDK::Cms::MediaBridgeProperty::TextDisplayHint,
        type: HubSpotSDK::Cms::MediaBridgeProperty::Type,
        updated_at: Integer
      }
    end
  end

  def test_update_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_property_group("groupName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubSpotSDK::PropertyGroup
    end

    assert_pattern do
      response => {
        archived: HubSpotSDK::Internal::Type::Boolean,
        label: String,
        name: String,
        display_order: Integer | nil
      }
    end
  end

  def test_update_schema_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.update_schema("objectType", app_id: 0, clear_description: true)

    assert_pattern do
      response => HubSpotSDK::ObjectTypeDefinition
    end

    assert_pattern do
      response => {
        id: String,
        allows_sensitive_properties: HubSpotSDK::Internal::Type::Boolean,
        archived: HubSpotSDK::Internal::Type::Boolean,
        fully_qualified_name: String,
        labels: HubSpotSDK::ObjectTypeDefinitionLabels,
        name: String,
        object_type_id: String,
        required_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        searchable_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
        secondary_display_properties: ^(HubSpotSDK::Internal::Type::ArrayOf[String]),
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

    response = @hubspot.cms.media_bridge.update_settings(0, updated_at: 0)

    assert_pattern do
      response => HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse
    end

    assert_pattern do
      response => {
        app_id: Integer,
        name: String
      }
    end
  end
end
