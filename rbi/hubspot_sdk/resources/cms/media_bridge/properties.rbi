# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class Properties
          # Create a new property for the specified media type
          sig do
            params(
              object_type: String,
              app_id: Integer,
              field_type: HubspotSDK::PropertyCreate::FieldType::OrSymbol,
              group_name: String,
              label: String,
              name: String,
              type: HubspotSDK::PropertyCreate::Type::OrSymbol,
              calculation_formula: String,
              data_sensitivity:
                HubspotSDK::PropertyCreate::DataSensitivity::OrSymbol,
              description: String,
              display_order: Integer,
              external_options: T::Boolean,
              form_field: T::Boolean,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              options: T::Array[HubspotSDK::OptionInput::OrHash],
              referenced_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Property)
          end
          def create(
            # Path param: The object type to create the new property for.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Body param:
            field_type:,
            # Body param:
            group_name:,
            # Body param:
            label:,
            # Body param:
            name:,
            # Body param:
            type:,
            # Body param:
            calculation_formula: nil,
            # Body param:
            data_sensitivity: nil,
            # Body param:
            description: nil,
            # Body param:
            display_order: nil,
            # Body param:
            external_options: nil,
            # Body param:
            form_field: nil,
            # Body param:
            has_unique_value: nil,
            # Body param:
            hidden: nil,
            # Body param:
            options: nil,
            # Body param:
            referenced_object_type: nil,
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
              description: String,
              display_order: Integer,
              field_type:
                HubspotSDK::Cms::MediaBridgePropertyUpdate::FieldType::OrSymbol,
              form_field: T::Boolean,
              group_name: String,
              has_unique_value: T::Boolean,
              hidden: T::Boolean,
              label: String,
              options: T::Array[HubspotSDK::OptionInput::OrHash],
              type: HubspotSDK::Cms::MediaBridgePropertyUpdate::Type::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Property)
          end
          def update(
            # Path param: The name of the property to update.
            property_name,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Path param: The object type for the property to be updated.
            object_type:,
            # Body param:
            calculation_formula: nil,
            # Body param:
            description: nil,
            # Body param:
            display_order: nil,
            # Body param:
            field_type: nil,
            # Body param:
            form_field: nil,
            # Body param:
            group_name: nil,
            # Body param:
            has_unique_value: nil,
            # Body param:
            hidden: nil,
            # Body param:
            label: nil,
            # Body param:
            options: nil,
            # Body param:
            type: nil,
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::CollectionResponsePropertyNoPaging)
          end
          def list(
            # Path param: The specific object type to get the details for.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            # Query param: Filter the response to the specified properties.
            properties: nil,
            request_options: {}
          )
          end

          # Delete an existing property for an object type.
          sig do
            params(
              property_name: String,
              app_id: Integer,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The name of the property to delete.
            property_name,
            # The appId for the media bridge app. It is possible to have multiple apps in your
            # developer account that use the media bridge.
            app_id:,
            # The object type for the property to delete.
            object_type:,
            request_options: {}
          )
          end

          # Create a batch of properties of the specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              inputs: T::Array[HubspotSDK::PropertyCreate::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def create_batch(
            # Path param: The type of object to create the properties for.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          # Archive a batch of existing properties for the specified types.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_batch(
            # Path param: The object type for the specified properties to be archived.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          # Get the details for an existing property by name.
          sig do
            params(
              property_name: String,
              app_id: Integer,
              object_type: String,
              archived: T::Boolean,
              properties: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Property)
          end
          def get(
            # Path param: The name of the property to get the details for.
            property_name,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Path param: The object type for the property.
            object_type:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            # Query param: Limit the response to only include the specified properties.
            properties: nil,
            request_options: {}
          )
          end

          # Get the details for a batch of properties for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: Integer,
              archived: T::Boolean,
              data_sensitivity:
                HubspotSDK::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def get_batch(
            # Path param: The object type to get the properties for.
            object_type,
            # Path param: The appId for the media bridge app. It is possible to have multiple
            # apps in your developer account that use the media bridge.
            app_id:,
            # Body param:
            archived:,
            # Body param:
            data_sensitivity:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
