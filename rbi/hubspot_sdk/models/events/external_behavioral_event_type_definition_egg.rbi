# typed: strong

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventTypeDefinitionEgg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinitionEgg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :include_default_properties

        # Human readable label for the event for display in HubSpot's UI.
        sig { returns(String) }
        attr_accessor :label

        # List of custom properties on event
        sig do
          returns(
            T::Array[HubspotSDK::Events::ExternalBehavioralEventPropertyCreate]
          )
        end
        attr_accessor :property_definitions

        sig do
          returns(
            T.nilable(
              HubspotSDK::Events::ExternalObjectResolutionMappingRequest
            )
          )
        end
        attr_reader :custom_matching_id

        sig do
          params(
            custom_matching_id:
              HubspotSDK::Events::ExternalObjectResolutionMappingRequest::OrHash
          ).void
        end
        attr_writer :custom_matching_id

        # A description of the event that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Internal event name, which must be used when referencing the event from the API.
        # If a name is not supplied, one will be generated based on the label. The name
        # does not include the `pe<PORTAL_ID>_` prefix used when sending event
        # completions.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
        # `DEAL`, `TICKET`. If no value is supplied, will default to `CONTACT`.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_object

        sig { params(primary_object: String).void }
        attr_writer :primary_object

        sig do
          params(
            include_default_properties: T::Boolean,
            label: String,
            property_definitions:
              T::Array[
                HubspotSDK::Events::ExternalBehavioralEventPropertyCreate::OrHash
              ],
            custom_matching_id:
              HubspotSDK::Events::ExternalObjectResolutionMappingRequest::OrHash,
            description: String,
            name: String,
            primary_object: String
          ).returns(T.attached_class)
        end
        def self.new(
          include_default_properties:,
          # Human readable label for the event for display in HubSpot's UI.
          label:,
          # List of custom properties on event
          property_definitions:,
          custom_matching_id: nil,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Internal event name, which must be used when referencing the event from the API.
          # If a name is not supplied, one will be generated based on the label. The name
          # does not include the `pe<PORTAL_ID>_` prefix used when sending event
          # completions.
          name: nil,
          # The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
          # `DEAL`, `TICKET`. If no value is supplied, will default to `CONTACT`.
          primary_object: nil
        )
        end

        sig do
          override.returns(
            {
              include_default_properties: T::Boolean,
              label: String,
              property_definitions:
                T::Array[
                  HubspotSDK::Events::ExternalBehavioralEventPropertyCreate
                ],
              custom_matching_id:
                HubspotSDK::Events::ExternalObjectResolutionMappingRequest,
              description: String,
              name: String,
              primary_object: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
