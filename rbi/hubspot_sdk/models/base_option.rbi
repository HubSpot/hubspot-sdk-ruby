# typed: strong

module HubSpotSDK
  module Models
    class BaseOption < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::BaseOption, HubSpotSDK::Internal::AnyHash)
        end

      # Hidden options will not be displayed in HubSpot.
      sig { returns(T::Boolean) }
      attr_accessor :hidden

      # A human-readable option label that will be shown in HubSpot.
      sig { returns(String) }
      attr_accessor :label

      # The internal value of the option, which must be used when setting the property
      # value through the API.
      sig { returns(String) }
      attr_accessor :value

      # A description of the option.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Options are displayed in order starting with the lowest positive integer value.
      # Values of -1 will cause the option to be displayed after any positive values.
      sig { returns(T.nilable(Integer)) }
      attr_reader :display_order

      sig { params(display_order: Integer).void }
      attr_writer :display_order

      # A HubSpot property option
      sig do
        params(
          hidden: T::Boolean,
          label: String,
          value: String,
          description: String,
          display_order: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Hidden options will not be displayed in HubSpot.
        hidden:,
        # A human-readable option label that will be shown in HubSpot.
        label:,
        # The internal value of the option, which must be used when setting the property
        # value through the API.
        value:,
        # A description of the option.
        description: nil,
        # Options are displayed in order starting with the lowest positive integer value.
        # Values of -1 will cause the option to be displayed after any positive values.
        display_order: nil
      )
      end

      sig do
        override.returns(
          {
            hidden: T::Boolean,
            label: String,
            value: String,
            description: String,
            display_order: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
