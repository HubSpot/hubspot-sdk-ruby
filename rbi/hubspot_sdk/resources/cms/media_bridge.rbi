# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class MediaBridge
        sig { returns(HubSpotSDK::Resources::Cms::MediaBridge::Batch) }
        attr_reader :batch

        # Create a new association definition for the specified object type.
        sig do
          params(
            object_type: String,
            app_id: Integer,
            from_object_type_id: String,
            to_object_type_id: String,
            name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::AssociationDefinition)
        end
        def create_association(
          # Path param
          object_type,
          # Path param
          app_id:,
          # Body param
          from_object_type_id:,
          # Body param
          to_object_type_id:,
          # Body param
          name: nil,
          request_options: {}
        )
        end

        # Create an event containing the viewers attention span details for the media.
        sig do
          params(
            media_type:
              HubSpotSDK::Cms::AttentionSpanEventRequest::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            raw_data_map: T::Hash[Symbol, Integer],
            session_id: String,
            _hsenc: String,
            contact_id: Integer,
            contact_utk: String,
            derived_values:
              HubSpotSDK::Cms::AttentionSpanCalculatedValues::OrHash,
            external_id: String,
            external_play_context:
              HubSpotSDK::Cms::AttentionSpanEventRequest::ExternalPlayContext::OrSymbol,
            media_bridge_id: Integer,
            media_name: String,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_url: String,
            raw_data_string: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::AttentionSpanEvent)
        end
        def create_attention_span_event(
          media_type:,
          occurred_timestamp:,
          raw_data_map:,
          session_id:,
          _hsenc: nil,
          contact_id: nil,
          contact_utk: nil,
          derived_values: nil,
          external_id: nil,
          external_play_context: nil,
          media_bridge_id: nil,
          media_name: nil,
          media_url: nil,
          page_id: nil,
          page_name: nil,
          page_url: nil,
          raw_data_string: nil,
          request_options: {}
        )
        end

        # Create an event for when a user begins playing a piece of media.
        sig do
          params(
            media_type:
              HubSpotSDK::Cms::MediaPlayedEventRequest::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            session_id: String,
            state: HubSpotSDK::Cms::MediaPlayedEventRequest::State::OrSymbol,
            _hsenc: String,
            contact_id: Integer,
            contact_utk: String,
            external_id: String,
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedEventRequest::ExternalPlayContext::OrSymbol,
            iframe_url: String,
            media_bridge_id: Integer,
            media_name: String,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_url: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaPlayedEvent)
        end
        def create_media_played_event(
          media_type:,
          occurred_timestamp:,
          session_id:,
          state:,
          _hsenc: nil,
          contact_id: nil,
          contact_utk: nil,
          external_id: nil,
          external_play_context: nil,
          iframe_url: nil,
          media_bridge_id: nil,
          media_name: nil,
          media_url: nil,
          page_id: nil,
          page_name: nil,
          page_url: nil,
          request_options: {}
        )
        end

        # Create an event representing a user reaching quarterly milestones in a piece of
        # media they're viewing.
        sig do
          params(
            media_type:
              HubSpotSDK::Cms::MediaPlayedPercentageEventRequest::MediaType::OrSymbol,
            occurred_timestamp: Integer,
            played_percent: Integer,
            session_id: String,
            _hsenc: String,
            contact_id: Integer,
            contact_utk: String,
            external_id: String,
            external_play_context:
              HubSpotSDK::Cms::MediaPlayedPercentageEventRequest::ExternalPlayContext::OrSymbol,
            media_bridge_id: Integer,
            media_name: String,
            media_url: String,
            page_id: Integer,
            page_name: String,
            page_url: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaPlayedPercentageEvent)
        end
        def create_media_played_percent_event(
          media_type:,
          occurred_timestamp:,
          played_percent:,
          session_id:,
          _hsenc: nil,
          contact_id: nil,
          contact_utk: nil,
          external_id: nil,
          external_play_context: nil,
          media_bridge_id: nil,
          media_name: nil,
          media_url: nil,
          page_id: nil,
          page_name: nil,
          page_url: nil,
          request_options: {}
        )
        end

        # Create a new media object type
        sig do
          params(
            app_id: Integer,
            media_types:
              T::Array[
                HubSpotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
              ],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::BulkIntegratorObjectCreationResponse)
        end
        def create_object_type(app_id, media_types:, request_options: {})
        end

        # Set up a new oEmbed domain for your media bridge app.
        sig do
          params(
            app_id: Integer,
            endpoints: HubSpotSDK::Cms::Endpoints::OrHash,
            portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::IntegratorOEmbedDomainModel)
        end
        def create_oembed_domain(
          app_id,
          endpoints:,
          portal_id: nil,
          request_options: {}
        )
        end

        # Create a new property for the specified media type
        sig do
          params(
            object_type: String,
            app_id: Integer,
            field_type: HubSpotSDK::PropertyCreate::FieldType::OrSymbol,
            group_name: String,
            label: String,
            name: String,
            type: HubSpotSDK::PropertyCreate::Type::OrSymbol,
            calculation_formula: String,
            currency_property_name: String,
            data_sensitivity:
              HubSpotSDK::PropertyCreate::DataSensitivity::OrSymbol,
            description: String,
            display_order: Integer,
            external_options: T::Boolean,
            form_field: T::Boolean,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            number_display_hint:
              HubSpotSDK::PropertyCreate::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            referenced_object_type: String,
            show_currency_symbol: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaBridgeProperty)
        end
        def create_property(
          # Path param
          object_type,
          # Path param
          app_id:,
          # Body param
          field_type:,
          # Body param
          group_name:,
          # Body param
          label:,
          # Body param
          name:,
          # Body param
          type:,
          # Body param
          calculation_formula: nil,
          # Body param
          currency_property_name: nil,
          # Body param
          data_sensitivity: nil,
          # Body param
          description: nil,
          # Body param
          display_order: nil,
          # Body param
          external_options: nil,
          # Body param
          form_field: nil,
          # Body param
          has_unique_value: nil,
          # Body param
          hidden: nil,
          # Body param
          number_display_hint: nil,
          # Body param
          options: nil,
          # Body param
          referenced_object_type: nil,
          # Body param
          show_currency_symbol: nil,
          request_options: {}
        )
        end

        # Create a new property group for the specified object type.
        sig do
          params(
            object_type: String,
            app_id: Integer,
            label: String,
            name: String,
            display_order: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::PropertyGroup)
        end
        def create_property_group(
          # Path param
          object_type,
          # Path param
          app_id:,
          # Body param
          label:,
          # Body param
          name:,
          # Body param
          display_order: nil,
          request_options: {}
        )
        end

        sig do
          params(
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::AssociationDefinition)
        end
        def create_video_association_definition(app_id, request_options: {})
        end

        # Delete an existing association definition for an object type.
        sig do
          params(
            association_id: String,
            app_id: Integer,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_association(
          association_id,
          app_id:,
          object_type:,
          request_options: {}
        )
        end

        # Delete an existing oEmbed domain.
        sig do
          params(
            app_id: Integer,
            id: Integer,
            domain_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_oembed_domain(
          app_id,
          id: nil,
          domain_portal_id: nil,
          request_options: {}
        )
        end

        # Delete an existing property for an object type.
        sig do
          params(
            property_name: String,
            app_id: Integer,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_property(
          property_name,
          app_id:,
          object_type:,
          request_options: {}
        )
        end

        # Delete an existing property group by name
        sig do
          params(
            group_name: String,
            app_id: Integer,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_property_group(
          group_name,
          app_id:,
          object_type:,
          request_options: {}
        )
        end

        # Get the visibility settings for media bridge events for your apps.
        sig do
          params(
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::EventVisibilityResponse)
        end
        def get_event_visibility_settings(app_id, request_options: {})
        end

        # Get the details for an existing oEmbed domain.
        sig do
          params(
            o_embed_domain_id: String,
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::IntegratorOEmbedDomainModel)
        end
        def get_oembed_domain(o_embed_domain_id, app_id:, request_options: {})
        end

        # Get the details for an existing property by name.
        sig do
          params(
            property_name: String,
            app_id: Integer,
            object_type: String,
            archived: T::Boolean,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaBridgeProperty)
        end
        def get_property(
          # Path param
          property_name,
          # Path param
          app_id:,
          # Path param
          object_type:,
          # Query param: Whether to return only results that have been archived.
          archived: nil,
          # Query param
          properties: nil,
          request_options: {}
        )
        end

        # Get the details of an existing property group by name.
        sig do
          params(
            group_name: String,
            app_id: Integer,
            object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::PropertyGroup)
        end
        def get_property_group(
          group_name,
          app_id:,
          object_type:,
          request_options: {}
        )
        end

        # Get the schema for a specified object type.
        sig do
          params(
            object_type: String,
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::ObjectSchema)
        end
        def get_schema(object_type, app_id:, request_options: {})
        end

        # Get the existing objects types that belong to the specified media type.
        sig do
          params(
            media_type:
              HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType::OrSymbol,
            app_id: Integer,
            include_full_definition: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::ObjectDefinitionResponse)
        end
        def list_object_types_by_media_type(
          # Path param
          media_type,
          # Path param
          app_id:,
          # Query param
          include_full_definition: nil,
          request_options: {}
        )
        end

        # Get the details for existing oEmbed domains for your app
        sig do
          params(
            app_id: Integer,
            domain_portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::OEmbedDomainsCollectionResponse)
        end
        def list_oembed_domains(
          app_id,
          domain_portal_id: nil,
          request_options: {}
        )
        end

        # Get the existing properties defined for a media object type.
        sig do
          params(
            object_type: String,
            app_id: Integer,
            archived: T::Boolean,
            properties: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::CollectionResponsePropertyNoPaging)
        end
        def list_properties(
          # Path param
          object_type,
          # Path param
          app_id:,
          # Query param: Whether to return only results that have been archived.
          archived: nil,
          # Query param
          properties: nil,
          request_options: {}
        )
        end

        # Get the property groups for a specified object type.
        sig do
          params(
            object_type: String,
            app_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::CollectionResponsePropertyGroupNoPaging)
        end
        def list_property_groups(object_type, app_id:, request_options: {})
        end

        # Get the schemas for all object types.
        sig do
          params(
            app_id: Integer,
            archived: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::CollectionResponseObjectSchemaNoPaging)
        end
        def list_schemas(
          app_id,
          # Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        # Register the name that your app will display when a user is selecting media
        # bridge items.
        sig do
          params(
            app_id: Integer,
            updated_at: Integer,
            allow_import_on_disconnect: T::Boolean,
            module_name: String,
            name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse)
        end
        def register_app_name(
          app_id,
          updated_at:,
          allow_import_on_disconnect: nil,
          module_name: nil,
          name: nil,
          request_options: {}
        )
        end

        # Set the visibility settings for media bridge events created by your app.
        sig do
          params(
            app_id: Integer,
            event_type:
              HubSpotSDK::Cms::EventVisibilityChange::EventType::OrSymbol,
            updated_at: Integer,
            show_in_reporting: T::Boolean,
            show_in_timeline: T::Boolean,
            show_in_workflows: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::EventVisibilityChange)
        end
        def update_event_visibility_settings(
          app_id,
          event_type:,
          updated_at:,
          show_in_reporting: nil,
          show_in_timeline: nil,
          show_in_workflows: nil,
          request_options: {}
        )
        end

        # Update an existing oEmbed domain.
        sig do
          params(
            o_embed_domain_id: String,
            app_id: Integer,
            endpoints: HubSpotSDK::Cms::Endpoints::OrHash,
            portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::IntegratorOEmbedDomainModel)
        end
        def update_oembed_domain(
          # Path param
          o_embed_domain_id,
          # Path param
          app_id:,
          # Body param
          endpoints:,
          # Body param
          portal_id: nil,
          request_options: {}
        )
        end

        # Update an existing property for an object type.
        sig do
          params(
            property_name: String,
            app_id: Integer,
            object_type: String,
            calculation_formula: String,
            currency_property_name: String,
            description: String,
            display_order: Integer,
            field_type:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
            form_field: T::Boolean,
            group_name: String,
            has_unique_value: T::Boolean,
            hidden: T::Boolean,
            label: String,
            number_display_hint:
              HubSpotSDK::Cms::MediaBridgePropertyUpdate::NumberDisplayHint::OrSymbol,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            show_currency_symbol: T::Boolean,
            type: HubSpotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaBridgeProperty)
        end
        def update_property(
          # Path param
          property_name,
          # Path param
          app_id:,
          # Path param
          object_type:,
          # Body param
          calculation_formula: nil,
          # Body param
          currency_property_name: nil,
          # Body param
          description: nil,
          # Body param
          display_order: nil,
          # Body param
          field_type: nil,
          # Body param
          form_field: nil,
          # Body param
          group_name: nil,
          # Body param
          has_unique_value: nil,
          # Body param
          hidden: nil,
          # Body param
          label: nil,
          # Body param
          number_display_hint: nil,
          # Body param
          options: nil,
          # Body param
          show_currency_symbol: nil,
          # Body param
          type: nil,
          request_options: {}
        )
        end

        # Update an existing property group by name.
        sig do
          params(
            group_name: String,
            app_id: Integer,
            object_type: String,
            display_order: Integer,
            label: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::PropertyGroup)
        end
        def update_property_group(
          # Path param
          group_name,
          # Path param
          app_id:,
          # Path param
          object_type:,
          # Body param
          display_order: nil,
          # Body param
          label: nil,
          request_options: {}
        )
        end

        # Update the schema for an existing object type
        sig do
          params(
            object_type: String,
            app_id: Integer,
            clear_description: T::Boolean,
            allows_sensitive_properties: T::Boolean,
            description: String,
            labels: HubSpotSDK::ObjectTypeDefinitionLabels::OrHash,
            primary_display_property: String,
            required_properties: T::Array[String],
            restorable: T::Boolean,
            searchable_properties: T::Array[String],
            secondary_display_properties: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::ObjectTypeDefinition)
        end
        def update_schema(
          # Path param
          object_type,
          # Path param
          app_id:,
          # Body param
          clear_description:,
          # Body param
          allows_sensitive_properties: nil,
          # Body param
          description: nil,
          # Body param
          labels: nil,
          # Body param
          primary_display_property: nil,
          # Body param
          required_properties: nil,
          # Body param
          restorable: nil,
          # Body param
          searchable_properties: nil,
          # Body param
          secondary_display_properties: nil,
          request_options: {}
        )
        end

        # Update the name that your app will display when a user is selecting media bridge
        # items.
        sig do
          params(
            app_id: Integer,
            updated_at: Integer,
            allow_import_on_disconnect: T::Boolean,
            module_name: String,
            name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse)
        end
        def update_settings(
          app_id,
          updated_at:,
          allow_import_on_disconnect: nil,
          module_name: nil,
          name: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
