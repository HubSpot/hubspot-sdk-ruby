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

        sig { returns(String) }
        attr_accessor :description

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(Float) }
        attr_accessor :double_data

        sig { returns(T::Boolean) }
        attr_accessor :hidden

        sig { returns(String) }
        attr_accessor :label

        sig { returns(T::Boolean) }
        attr_accessor :read_only

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
          description:,
          display_order:,
          double_data:,
          hidden:,
          label:,
          read_only:,
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
