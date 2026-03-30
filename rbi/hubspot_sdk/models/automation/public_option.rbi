# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicOption < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicOption,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A user-friendly label that identifies the option.
        sig { returns(String) }
        attr_accessor :label

        # The actual value of the option.
        sig { returns(String) }
        attr_accessor :value

        # A description of the option.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The position of the option relative to others in the list.
        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        sig do
          params(
            label: String,
            value: String,
            description: String,
            display_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A user-friendly label that identifies the option.
          label:,
          # The actual value of the option.
          value:,
          # A description of the option.
          description: nil,
          # The position of the option relative to others in the list.
          display_order: nil
        )
        end

        sig do
          override.returns(
            {
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
end
