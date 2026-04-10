# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableCloneRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::HubDBTableCloneRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies whether to copy the rows during clone
        sig { returns(T::Boolean) }
        attr_accessor :copy_rows

        # Indicates whether the table is defined by HubSpot.
        sig { returns(T::Boolean) }
        attr_accessor :is_hubspot_defined

        # The new label for the cloned table
        sig { returns(T.nilable(String)) }
        attr_reader :new_label

        sig { params(new_label: String).void }
        attr_writer :new_label

        # The new name for the cloned table
        sig { returns(T.nilable(String)) }
        attr_reader :new_name

        sig { params(new_name: String).void }
        attr_writer :new_name

        sig do
          params(
            copy_rows: T::Boolean,
            is_hubspot_defined: T::Boolean,
            new_label: String,
            new_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies whether to copy the rows during clone
          copy_rows:,
          # Indicates whether the table is defined by HubSpot.
          is_hubspot_defined:,
          # The new label for the cloned table
          new_label: nil,
          # The new name for the cloned table
          new_name: nil
        )
        end

        sig do
          override.returns(
            {
              copy_rows: T::Boolean,
              is_hubspot_defined: T::Boolean,
              new_label: String,
              new_name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
