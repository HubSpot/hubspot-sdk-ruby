# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class MarkRecordingAsReadyRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::MarkRecordingAsReadyRequest,
                HubspotSDK::Internal::AnyHash
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
