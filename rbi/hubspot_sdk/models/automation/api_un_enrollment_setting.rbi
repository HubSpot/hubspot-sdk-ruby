# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIUnEnrollmentSetting < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIUnEnrollmentSetting,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The IDs of the flows to unenroll an object in if it's enrolled in this flow.
        sig { returns(T::Array[String]) }
        attr_accessor :flow_ids

        # The type of unenrollment to perform:
        #
        # "ALL" - unenroll the object from all other flows
        #
        # "SELECTIVE" - only unenroll the object from the flows specified in `flowIds`
        sig do
          returns(
            HubspotSDK::Automation::APIUnEnrollmentSetting::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            flow_ids: T::Array[String],
            type: HubspotSDK::Automation::APIUnEnrollmentSetting::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The IDs of the flows to unenroll an object in if it's enrolled in this flow.
          flow_ids:,
          # The type of unenrollment to perform:
          #
          # "ALL" - unenroll the object from all other flows
          #
          # "SELECTIVE" - only unenroll the object from the flows specified in `flowIds`
          type:
        )
        end

        sig do
          override.returns(
            {
              flow_ids: T::Array[String],
              type:
                HubspotSDK::Automation::APIUnEnrollmentSetting::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of unenrollment to perform:
        #
        # "ALL" - unenroll the object from all other flows
        #
        # "SELECTIVE" - only unenroll the object from the flows specified in `flowIds`
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIUnEnrollmentSetting::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALL =
            T.let(
              :ALL,
              HubspotSDK::Automation::APIUnEnrollmentSetting::Type::TaggedSymbol
            )
          SELECTIVE =
            T.let(
              :SELECTIVE,
              HubspotSDK::Automation::APIUnEnrollmentSetting::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIUnEnrollmentSetting::Type::TaggedSymbol
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
