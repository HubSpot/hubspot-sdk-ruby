# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ContentScheduleRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ContentScheduleRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID of the object to be scheduled.
        sig { returns(String) }
        attr_accessor :id

        # The date the object should transition from scheduled to published.
        sig { returns(Time) }
        attr_accessor :publish_date

        sig { params(id: String, publish_date: Time).returns(T.attached_class) }
        def self.new(
          # The ID of the object to be scheduled.
          id:,
          # The date the object should transition from scheduled to published.
          publish_date:
        )
        end

        sig { override.returns({ id: String, publish_date: Time }) }
        def to_hash
        end
      end
    end
  end
end
