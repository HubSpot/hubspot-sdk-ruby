# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class ParameterizedHeader < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::ParameterizedHeader,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An object containing additional parameters for the header, where each key is a
        # parameter name and each value is a string representing the parameter's value.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        # A string representing the main value of the header.
        sig { returns(String) }
        attr_accessor :value

        sig do
          params(parameters: T::Hash[Symbol, String], value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # An object containing additional parameters for the header, where each key is a
          # parameter name and each value is a string representing the parameter's value.
          parameters:,
          # A string representing the main value of the header.
          value:
        )
        end

        sig do
          override.returns(
            { parameters: T::Hash[Symbol, String], value: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
