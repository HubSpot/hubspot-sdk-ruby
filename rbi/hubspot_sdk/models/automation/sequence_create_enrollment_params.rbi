# typed: strong

module HubspotSDK
  module Models
    module Automation
      class SequenceCreateEnrollmentParams < HubspotSDK::Models::Automation::PublicSequenceEnrollmentRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::SequenceCreateEnrollmentParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the user performing the enrollment. This parameter is
        # required.
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            user_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier of the user performing the enrollment. This parameter is
          # required.
          user_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { user_id: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
