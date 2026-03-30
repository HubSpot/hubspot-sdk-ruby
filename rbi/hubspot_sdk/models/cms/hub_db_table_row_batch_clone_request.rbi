# typed: strong

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowBatchCloneRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::HubDBTableRowBatchCloneRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the row to be cloned.
        sig { returns(String) }
        attr_accessor :id

        # The name for the cloned row.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The ID of the row to be cloned.
          id:,
          # The name for the cloned row.
          name: nil
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
