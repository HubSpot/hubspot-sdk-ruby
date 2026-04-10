# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Option1 < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Option1, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :hidden

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :value

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

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
          hidden:,
          label:,
          value:,
          description: nil,
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
end
