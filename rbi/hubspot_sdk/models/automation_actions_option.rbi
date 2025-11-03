# typed: strong

module HubspotSDK
  module Models
    class AutomationActionsOption < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::AutomationActionsOption,
            HubspotSDK::Internal::AnyHash
          )
        end

      # A description of the option.
      sig { returns(String) }
      attr_accessor :description

      # The position of the item relative to others in the list.
      sig { returns(Integer) }
      attr_accessor :display_order

      sig { returns(Float) }
      attr_accessor :double_data

      # Whether the option is displayed in HubSpot's UI.
      sig { returns(T::Boolean) }
      attr_accessor :hidden

      # A user-friendly label that identifies the option.
      sig { returns(String) }
      attr_accessor :label

      # Whether the option is read-only.
      sig { returns(T::Boolean) }
      attr_accessor :read_only

      # The actual value of the option.
      sig { returns(String) }
      attr_accessor :value

      # A HubSpot property option
      sig do
        params(
          description: String,
          display_order: Integer,
          double_data: Float,
          hidden: T::Boolean,
          label: String,
          read_only: T::Boolean,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A description of the option.
        description:,
        # The position of the item relative to others in the list.
        display_order:,
        double_data:,
        # Whether the option is displayed in HubSpot's UI.
        hidden:,
        # A user-friendly label that identifies the option.
        label:,
        # Whether the option is read-only.
        read_only:,
        # The actual value of the option.
        value:
      )
      end

      sig do
        override.returns(
          {
            description: String,
            display_order: Integer,
            double_data: Float,
            hidden: T::Boolean,
            label: String,
            read_only: T::Boolean,
            value: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
