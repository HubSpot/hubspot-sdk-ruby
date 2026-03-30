# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::MediaBridgeTest < HubspotSDK::Test::ResourceTest
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
      response => HubspotSDK::Cms::AttentionSpanEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::AttentionSpanEvent::MediaType,
        occurred_timestamp: Integer,
        percent_range: String,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        total_percent_played: Float,
        external_play_context: HubspotSDK::Cms::AttentionSpanEvent::ExternalPlayContext | nil,
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
      response => HubspotSDK::Cms::MediaPlayedEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::MediaPlayedEvent::MediaType,
        occurred_timestamp: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        state: HubspotSDK::Cms::MediaPlayedEvent::State,
        external_play_context: HubspotSDK::Cms::MediaPlayedEvent::ExternalPlayContext | nil,
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
      response => HubspotSDK::Cms::MediaPlayedPercentageEvent
    end

    assert_pattern do
      response => {
        contact_id: Integer,
        media_bridge_id: Integer,
        media_bridge_object_coordinates: String,
        media_bridge_object_type_id: String,
        media_name: String,
        media_type: HubspotSDK::Cms::MediaPlayedPercentageEvent::MediaType,
        occurred_timestamp: Integer,
        played_percent: Integer,
        portal_id: Integer,
        provider_id: Integer,
        session_id: String,
        external_play_context: HubspotSDK::Cms::MediaPlayedPercentageEvent::ExternalPlayContext | nil,
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
        0,
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
        app_id: 0,
        field_type: :booleancheckbox,
        group_name: "groupName",
        label: "label",
        name: "name",
        type: :bool
      )

    assert_pattern do
      response => HubspotSDK::Cms::Property
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubspotSDK::Internal::Type::Boolean,
        can_archive: HubspotSDK::Internal::Type::Boolean,
        can_restore: HubspotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubspotSDK::Cms::Property::DataSensitivity,
        date_display_hint: HubspotSDK::Cms::Property::DateDisplayHint,
        deleted: HubspotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubspotSDK::Cms::Property::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubspotSDK::Internal::Type::Boolean,
        external_options: HubspotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubspotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubspotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubspotSDK::Internal::Type::Boolean,
        hidden: HubspotSDK::Internal::Type::Boolean,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean,
        is_customized_default: HubspotSDK::Internal::Type::Boolean,
        is_multi_valued: HubspotSDK::Internal::Type::Boolean,
        is_partial: HubspotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubspotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubspotSDK::Cms::Property::NumberDisplayHint,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AutomationActionsOption]),
        options_are_mutable: HubspotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubspotSDK::Cms::Property::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubspotSDK::Internal::Type::Boolean,
        read_only_value: HubspotSDK::Internal::Type::Boolean,
        referenced_object_type: HubspotSDK::Cms::Property::ReferencedObjectType,
        searchable_in_global_search: HubspotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubspotSDK::Cms::Property::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean,
        text_display_hint: HubspotSDK::Cms::Property::TextDisplayHint,
        type: HubspotSDK::Cms::Property::Type,
        updated_at: Integer
      }
    end
  end

  def test_create_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.create_property_group("objectType", app_id: 0, label: "label", name: "name")

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

    response = @hubspot.cms.media_bridge.create_video_association_definition(0)

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

    response = @hubspot.cms.media_bridge.get_oembed_domain("oEmbedDomainId", app_id: 0)

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

    response = @hubspot.cms.media_bridge.get_property("propertyName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Cms::Property
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubspotSDK::Internal::Type::Boolean,
        can_archive: HubspotSDK::Internal::Type::Boolean,
        can_restore: HubspotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubspotSDK::Cms::Property::DataSensitivity,
        date_display_hint: HubspotSDK::Cms::Property::DateDisplayHint,
        deleted: HubspotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubspotSDK::Cms::Property::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubspotSDK::Internal::Type::Boolean,
        external_options: HubspotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubspotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubspotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubspotSDK::Internal::Type::Boolean,
        hidden: HubspotSDK::Internal::Type::Boolean,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean,
        is_customized_default: HubspotSDK::Internal::Type::Boolean,
        is_multi_valued: HubspotSDK::Internal::Type::Boolean,
        is_partial: HubspotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubspotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubspotSDK::Cms::Property::NumberDisplayHint,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AutomationActionsOption]),
        options_are_mutable: HubspotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubspotSDK::Cms::Property::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubspotSDK::Internal::Type::Boolean,
        read_only_value: HubspotSDK::Internal::Type::Boolean,
        referenced_object_type: HubspotSDK::Cms::Property::ReferencedObjectType,
        searchable_in_global_search: HubspotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubspotSDK::Cms::Property::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean,
        text_display_hint: HubspotSDK::Cms::Property::TextDisplayHint,
        type: HubspotSDK::Cms::Property::Type,
        updated_at: Integer
      }
    end
  end

  def test_get_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.get_property_group("groupName", app_id: 0, object_type: "objectType")

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

    response = @hubspot.cms.media_bridge.get_schema("objectType", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Cms::ObjectSchema
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

    response = @hubspot.cms.media_bridge.list_object_types_by_media_type(:AUDIO, app_id: 0)

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

    response = @hubspot.cms.media_bridge.list_oembed_domains(0)

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

    response = @hubspot.cms.media_bridge.list_properties("objectType", app_id: 0)

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponsePropertyNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Property1])
      }
    end
  end

  def test_list_property_groups_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.list_property_groups("objectType", app_id: 0)

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

    response = @hubspot.cms.media_bridge.list_schemas(0)

    assert_pattern do
      response => HubspotSDK::Cms::CollectionResponseObjectSchemaNoPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectSchema])
      }
    end
  end

  def test_register_app_name_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.media_bridge.register_app_name(0, updated_at: 0)

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

    response = @hubspot.cms.media_bridge.update_event_visibility_settings(0, event_type: :ALL, updated_at: 0)

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
        app_id: 0,
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
      @hubspot.cms.media_bridge.update_property("propertyName", app_id: 0, object_type: "objectType")

    assert_pattern do
      response => HubspotSDK::Cms::Property
    end

    assert_pattern do
      response => {
        allowed_object_types: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ObjectTypeIDProto]),
        calculated: HubspotSDK::Internal::Type::Boolean,
        can_archive: HubspotSDK::Internal::Type::Boolean,
        can_restore: HubspotSDK::Internal::Type::Boolean,
        created_at: Integer,
        created_user_id: Integer,
        currency_property_name: String,
        data_sensitivity: HubspotSDK::Cms::Property::DataSensitivity,
        date_display_hint: HubspotSDK::Cms::Property::DateDisplayHint,
        deleted: HubspotSDK::Internal::Type::Boolean,
        description: String,
        display_mode: HubspotSDK::Cms::Property::DisplayMode,
        display_order: Integer,
        enforce_multivalue_uniqueness: HubspotSDK::Internal::Type::Boolean,
        external_options: HubspotSDK::Internal::Type::Boolean,
        external_options_reference_type: String,
        favorited: HubspotSDK::Internal::Type::Boolean,
        favorited_order: Integer,
        field_type: String,
        form_field: HubspotSDK::Internal::Type::Boolean,
        from_user_id: Integer,
        group_name: String,
        has_unique_value: HubspotSDK::Internal::Type::Boolean,
        hidden: HubspotSDK::Internal::Type::Boolean,
        hubspot_defined: HubspotSDK::Internal::Type::Boolean,
        is_customized_default: HubspotSDK::Internal::Type::Boolean,
        is_multi_valued: HubspotSDK::Internal::Type::Boolean,
        is_partial: HubspotSDK::Internal::Type::Boolean,
        label: String,
        mutable_definition_not_deletable: HubspotSDK::Internal::Type::Boolean,
        name: String,
        number_display_hint: HubspotSDK::Cms::Property::NumberDisplayHint,
        options: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AutomationActionsOption]),
        options_are_mutable: HubspotSDK::Internal::Type::Boolean,
        option_sort_strategy: HubspotSDK::Cms::Property::OptionSortStrategy,
        owning_app_id: Integer,
        portal_id: Integer,
        read_only_definition: HubspotSDK::Internal::Type::Boolean,
        read_only_value: HubspotSDK::Internal::Type::Boolean,
        referenced_object_type: HubspotSDK::Cms::Property::ReferencedObjectType,
        searchable_in_global_search: HubspotSDK::Internal::Type::Boolean,
        search_text_analysis_mode: HubspotSDK::Cms::Property::SearchTextAnalysisMode,
        sensitive_data_categories: ^(HubspotSDK::Internal::Type::ArrayOf[String]),
        show_currency_symbol: HubspotSDK::Internal::Type::Boolean,
        text_display_hint: HubspotSDK::Cms::Property::TextDisplayHint,
        type: HubspotSDK::Cms::Property::Type,
        updated_at: Integer
      }
    end
  end

  def test_update_property_group_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.media_bridge.update_property_group("groupName", app_id: 0, object_type: "objectType")

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

    response = @hubspot.cms.media_bridge.update_schema("objectType", app_id: 0, clear_description: true)

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

    response = @hubspot.cms.media_bridge.update_settings(0, updated_at: 0)

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
