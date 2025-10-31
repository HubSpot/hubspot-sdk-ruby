# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class MarkRecordingAsReadyRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::MarkRecordingAsReadyRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :engagement_id

          sig { params(engagement_id: Integer).returns(T.attached_class) }
          def self.new(engagement_id:)
          end

          sig { override.returns({ engagement_id: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
