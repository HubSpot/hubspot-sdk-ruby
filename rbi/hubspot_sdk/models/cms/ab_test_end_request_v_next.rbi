# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class AbTestEndRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::AbTestEndRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of the test to end.
        sig { returns(String) }
        attr_accessor :ab_test_id

        # ID of the object to designate as the test winner.
        sig { returns(String) }
        attr_accessor :winner_id

        sig do
          params(ab_test_id: String, winner_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the test to end.
          ab_test_id:,
          # ID of the object to designate as the test winner.
          winner_id:
        )
        end

        sig { override.returns({ ab_test_id: String, winner_id: String }) }
        def to_hash
        end
      end
    end
  end
end
