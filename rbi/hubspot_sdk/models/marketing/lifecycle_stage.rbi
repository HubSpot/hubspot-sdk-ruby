# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class LifecycleStage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::LifecycleStage,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The objectTypeId for both contact and company
        sig { returns(String) }
        attr_accessor :object_type_id

        # The internal name of the contact's lifecycle stage set when submitting a form
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(object_type_id: String, value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The objectTypeId for both contact and company
          object_type_id:,
          # The internal name of the contact's lifecycle stage set when submitting a form
          value:
        )
        end

        sig { override.returns({ object_type_id: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
