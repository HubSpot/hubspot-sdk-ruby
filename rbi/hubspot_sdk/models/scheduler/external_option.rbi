# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalOption < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalOption,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A brief description of the option.
        sig { returns(String) }
        attr_accessor :description

        # The order in which the option should be displayed.
        sig { returns(Integer) }
        attr_accessor :display_order

        # Deprecated property. Will always be 0.
        sig { returns(Float) }
        attr_accessor :double_data

        # Whether the option should be hidden from the user.
        sig { returns(T::Boolean) }
        attr_accessor :hidden

        # The text label for the option.
        sig { returns(String) }
        attr_accessor :label

        # Whether the option is read-only.
        sig { returns(T::Boolean) }
        attr_accessor :read_only

        # The value associated with the option.
        sig { returns(String) }
        attr_accessor :value

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
          # A brief description of the option.
          description:,
          # The order in which the option should be displayed.
          display_order:,
          # Deprecated property. Will always be 0.
          double_data:,
          # Whether the option should be hidden from the user.
          hidden:,
          # The text label for the option.
          label:,
          # Whether the option is read-only.
          read_only:,
          # The value associated with the option.
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
end
