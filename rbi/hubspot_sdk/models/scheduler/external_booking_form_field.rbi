# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalBookingFormField < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalBookingFormField,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The name of the form field.
        sig { returns(String) }
        attr_accessor :name

        # The value associated with the form field.
        sig { returns(String) }
        attr_accessor :value

        sig { params(name: String, value: String).returns(T.attached_class) }
        def self.new(
          # The name of the form field.
          name:,
          # The value associated with the form field.
          value:
        )
        end

        sig { override.returns({ name: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
