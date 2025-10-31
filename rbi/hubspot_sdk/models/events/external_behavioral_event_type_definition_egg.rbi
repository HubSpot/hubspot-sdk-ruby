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

        # Human readable label for the event. Used in HubSpot UI
        sig { returns(String) }
        attr_accessor :label

        # List of custom properties on event
        sig do
          returns(
            T::Array[HubspotSDK::Events::ExternalBehavioralEventPropertyCreate]
          )
        end
        attr_accessor :property_definitions

        # A description of the event that will be shown as help text in HubSpot.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Internal event name, which must be used when referencing the event from this
        # event definitions API. If a name is not supplied, one will be generated based on
        # the label. The `name` value will also be used to automatically generate a
        # `fullyQualifiedName` for the event definition, which you'll use when sending
        # event completions to this event.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The object type to associate this event to. Can be one of CONTACT, COMPANY,
        # DEAL, TICKET. If no primaryObject is supplied, we will default to associating
        # the event to CONTACT objects.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_object

        sig { params(primary_object: String).void }
        attr_writer :primary_object

        sig do
          params(
            label: String,
            property_definitions:
              T::Array[
                HubspotSDK::Events::ExternalBehavioralEventPropertyCreate::OrHash
              ],
            description: String,
            name: String,
            primary_object: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Human readable label for the event. Used in HubSpot UI
          label:,
          # List of custom properties on event
          property_definitions:,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Internal event name, which must be used when referencing the event from this
          # event definitions API. If a name is not supplied, one will be generated based on
          # the label. The `name` value will also be used to automatically generate a
          # `fullyQualifiedName` for the event definition, which you'll use when sending
          # event completions to this event.
          name: nil,
          # The object type to associate this event to. Can be one of CONTACT, COMPANY,
          # DEAL, TICKET. If no primaryObject is supplied, we will default to associating
          # the event to CONTACT objects.
          primary_object: nil
        )
        end

        sig do
          override.returns(
            {
              label: String,
              property_definitions:
                T::Array[
                  HubspotSDK::Events::ExternalBehavioralEventPropertyCreate
                ],
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
