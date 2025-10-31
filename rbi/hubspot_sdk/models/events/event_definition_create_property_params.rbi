# typed: strong

module HubspotSDK
  module Models
    module Events
      class EventDefinitionCreatePropertyParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::EventDefinitionCreatePropertyParams,
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

        sig { params(options: T::Array[HubspotSDK::OptionInput::OrHash]).void }
        attr_writer :options

        sig do
          params(
            label: String,
            type: String,
            description: String,
            name: String,
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
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
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              label: String,
              type: String,
              description: String,
              name: String,
              options: T::Array[HubspotSDK::OptionInput],
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
