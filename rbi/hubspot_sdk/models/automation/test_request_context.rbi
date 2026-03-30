# typed: strong

module HubspotSDK
  module Models
    module Automation
      class TestRequestContext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::TestRequestContext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        sig do
          returns(HubspotSDK::Automation::TestRequestContext::Source::OrSymbol)
        end
        attr_accessor :source

        sig do
          params(
            source: HubspotSDK::Automation::TestRequestContext::Source::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the source of the test request, with the only accepted value being
          # 'TEST'.
          source:
        )
        end

        sig do
          override.returns(
            {
              source:
                HubspotSDK::Automation::TestRequestContext::Source::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the test request, with the only accepted value being
        # 'TEST'.
        module Source
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::TestRequestContext::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEST =
            T.let(
              :TEST,
              HubspotSDK::Automation::TestRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::TestRequestContext::Source::TaggedSymbol
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
