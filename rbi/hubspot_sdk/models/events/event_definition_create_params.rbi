# typed: strong

module HubspotSDK
  module Models
    module Events
      class EventDefinitionCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::EventDefinitionCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Human readable label for the event. Used in HubSpot UI
        sig { returns(String) }
        attr_accessor :label

        # List of custom properties on event
        sig do
          returns(
            T::Array[
              HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition
            ]
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
                HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition::OrHash
              ],
            description: String,
            name: String,
            primary_object: String,
            request_options: HubspotSDK::RequestOptions::OrHash
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
          primary_object: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              label: String,
              property_definitions:
                T::Array[
                  HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition
                ],
              description: String,
              name: String,
              primary_object: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class PropertyDefinition < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Human readable label for the property. Used in HubSpot UI
          sig { returns(String) }
          attr_accessor :label

          # The data type of the property. Can be one of the following: [string, number,
          # enumeration, datetime]
          sig { returns(String) }
          attr_accessor :type

          # A description of the property that will be shown as help text in HubSpot.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Internal property name, which must be used when referencing the property from
          # the API
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # A list of available options for the property if it is an enumeration. NOTE: This
          # field is only applicable for enumerated properties.
          sig { returns(T.nilable(T::Array[HubspotSDK::OptionInput])) }
          attr_reader :options

          sig do
            params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void
          end
          attr_writer :options

          sig do
            params(
              label: String,
              type: String,
              description: String,
              name: String,
              options: T::Array[HubspotSDK::OptionInput::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(
            # Human readable label for the property. Used in HubSpot UI
            label:,
            # The data type of the property. Can be one of the following: [string, number,
            # enumeration, datetime]
            type:,
            # A description of the property that will be shown as help text in HubSpot.
            description: nil,
            # Internal property name, which must be used when referencing the property from
            # the API
            name: nil,
            # A list of available options for the property if it is an enumeration. NOTE: This
            # field is only applicable for enumerated properties.
            options: nil
          )
          end

          sig do
            override.returns(
              {
                label: String,
                type: String,
                description: String,
                name: String,
                options: T::Array[HubspotSDK::OptionInput]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
