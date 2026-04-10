# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class MediaBridgeProviderPartial < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::MediaBridgeProviderPartial,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :updated_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_import_on_disconnect

        sig { params(allow_import_on_disconnect: T::Boolean).void }
        attr_writer :allow_import_on_disconnect

        sig { returns(T.nilable(String)) }
        attr_reader :module_name

        sig { params(module_name: String).void }
        attr_writer :module_name

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            updated_at: Integer,
            allow_import_on_disconnect: T::Boolean,
            module_name: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          updated_at:,
          allow_import_on_disconnect: nil,
          module_name: nil,
          name: nil
        )
        end

        sig do
          override.returns(
            {
              updated_at: Integer,
              allow_import_on_disconnect: T::Boolean,
              module_name: String,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
