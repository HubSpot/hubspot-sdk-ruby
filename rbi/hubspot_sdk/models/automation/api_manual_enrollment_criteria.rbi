# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIManualEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIManualEnrollmentCriteria,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :should_re_enroll

        sig do
          returns(
            HubspotSDK::Automation::APIManualEnrollmentCriteria::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            should_re_enroll: T::Boolean,
            type:
              HubspotSDK::Automation::APIManualEnrollmentCriteria::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(should_re_enroll:, type:)
        end

        sig do
          override.returns(
            {
              should_re_enroll: T::Boolean,
              type:
                HubspotSDK::Automation::APIManualEnrollmentCriteria::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIManualEnrollmentCriteria::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANUAL =
            T.let(
              :MANUAL,
              HubspotSDK::Automation::APIManualEnrollmentCriteria::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIManualEnrollmentCriteria::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
