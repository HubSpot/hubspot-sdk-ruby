# typed: strong

module HubspotSDK
  module Models
    module Events
      class ExternalBehavioralEventPropertyCreate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ExternalBehavioralEventPropertyCreate,
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
        sig { returns(T.nilable(T::Array[HubspotSDK::Events::OptionInput])) }
        attr_reader :options

        sig do
          params(
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash]
          ).void
        end
        attr_writer :options

        sig do
          params(
            label: String,
            type: String,
            description: String,
            name: String,
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash]
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
              options: T::Array[HubspotSDK::Events::OptionInput]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
