# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class MarkRecordingAsReadyRequest < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::MarkRecordingAsReadyRequest,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The unique identifier for the engagement associated with the call recording.
          sig { returns(Integer) }
          attr_accessor :engagement_id

          sig { params(engagement_id: Integer).returns(T.attached_class) }
          def self.new(
            # The unique identifier for the engagement associated with the call recording.
            engagement_id:
          )
          end

          sig { override.returns({ engagement_id: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
