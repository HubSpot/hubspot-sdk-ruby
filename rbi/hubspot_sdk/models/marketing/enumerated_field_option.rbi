# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EnumeratedFieldOption < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EnumeratedFieldOption,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The order the choices will be displayed in.
        sig { returns(Integer) }
        attr_accessor :display_order

        # The visible label for this choice.
        sig { returns(String) }
        attr_accessor :label

        # The value which will be submitted if this choice is selected.
        sig { returns(String) }
        attr_accessor :value

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          params(
            display_order: Integer,
            label: String,
            value: String,
            description: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The order the choices will be displayed in.
          display_order:,
          # The visible label for this choice.
          label:,
          # The value which will be submitted if this choice is selected.
          value:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              display_order: Integer,
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
