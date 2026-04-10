# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class AbTestRerunRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::AbTestRerunRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # ID of the test to rerun.
        sig { returns(String) }
        attr_accessor :ab_test_id

        # ID of the object to reactivate as a test variation.
        sig { returns(String) }
        attr_accessor :variation_id

        sig do
          params(ab_test_id: String, variation_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the test to rerun.
          ab_test_id:,
          # ID of the object to reactivate as a test variation.
          variation_id:
        )
        end

        sig { override.returns({ ab_test_id: String, variation_id: String }) }
        def to_hash
        end
      end
    end
  end
end
