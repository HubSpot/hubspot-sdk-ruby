# typed: strong

module HubspotSDK
  module Models
    module Events
      class OptionInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::OptionInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :display_order

        sig { returns(T::Boolean) }
        attr_accessor :hidden

        # null
        sig { returns(String) }
        attr_accessor :label

        # null
        sig { returns(String) }
        attr_accessor :value

        # null
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            display_order: Integer,
            hidden: T::Boolean,
            label: String,
            value: String,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(
          display_order:,
          hidden:,
          # null
          label:,
          # null
          value:,
          # null
          description: nil
        )
        end

        sig do
          override.returns(
            {
              display_order: Integer,
              hidden: T::Boolean,
              label: String,
              value: String,
              description: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
