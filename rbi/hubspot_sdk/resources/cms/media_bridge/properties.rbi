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
              app_id: String,
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
            # Path param:
            object_type,
            # Path param:
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
              app_id: String,
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
            # Path param:
            property_name,
            # Path param:
            app_id:,
            # Path param:
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
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::CollectionResponsePropertyNoPaging)
          end
          def list(object_type, app_id:, request_options: {})
          end

          # Delete an existing property for an object type.
          sig do
            params(
              property_name: String,
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(property_name, app_id:, object_type:, request_options: {})
          end

          # Archive a batch of existing properties for the specified types.
          sig do
            params(
              object_type: String,
              app_id: String,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def archive_batch(
            # Path param:
            object_type,
            # Path param:
            app_id:,
            # Body param:
            inputs:,
            request_options: {}
          )
          end

          # Create a batch of properties of the specified object type.
          sig do
            params(
              object_type: String,
              app_id: String,
              inputs: T::Array[HubspotSDK::PropertyCreate::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def create_batch(
            # Path param:
            object_type,
            # Path param:
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
              app_id: String,
              object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Property)
          end
          def get(property_name, app_id:, object_type:, request_options: {})
          end

          # Get the details for a batch of properties for a specified object type.
          sig do
            params(
              object_type: String,
              app_id: String,
              archived: T::Boolean,
              inputs: T::Array[HubspotSDK::PropertyName::OrHash],
              data_sensitivity:
                HubspotSDK::Crm::BatchReadInputPropertyName::DataSensitivity::OrSymbol,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::BatchResponseProperty)
          end
          def get_batch(
            # Path param:
            object_type,
            # Path param:
            app_id:,
            # Body param:
            archived:,
            # Body param:
            inputs:,
            # Body param:
            data_sensitivity: nil,
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
