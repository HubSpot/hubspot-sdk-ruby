# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PropertyGroup < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::PropertyGroup, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(String) }
        attr_accessor :label

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Integer)) }
        attr_reader :display_order

        sig { params(display_order: Integer).void }
        attr_writer :display_order

        sig do
          params(
            archived: T::Boolean,
            label: String,
            name: String,
            display_order: Integer
          ).returns(T.attached_class)
        end
        def self.new(archived:, label:, name:, display_order: nil)
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              label: String,
              name: String,
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
