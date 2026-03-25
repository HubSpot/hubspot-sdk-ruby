# typed: strong

module HubspotSDK
  module Models
    module Meta
      class IPRange < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Meta::IPRange, HubspotSDK::Internal::AnyHash)
          end

        # The CIDR notation representing the IP range.
        sig { returns(String) }
        attr_accessor :cidr

        # A description of the IP range.
        sig { returns(String) }
        attr_accessor :description

        # The direction of the IP traffic, which can be INGRESS or EGRESS.
        sig { returns(HubspotSDK::Meta::IPRange::Direction::TaggedSymbol) }
        attr_accessor :direction

        # The service associated with the IP range, such as EMAIL, API, DNS, or
        # WEB_SCRAPING.
        sig { returns(HubspotSDK::Meta::IPRange::Service::TaggedSymbol) }
        attr_accessor :service

        sig do
          params(
            cidr: String,
            description: String,
            direction: HubspotSDK::Meta::IPRange::Direction::OrSymbol,
            service: HubspotSDK::Meta::IPRange::Service::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The CIDR notation representing the IP range.
          cidr:,
          # A description of the IP range.
          description:,
          # The direction of the IP traffic, which can be INGRESS or EGRESS.
          direction:,
          # The service associated with the IP range, such as EMAIL, API, DNS, or
          # WEB_SCRAPING.
          service:
        )
        end

        sig do
          override.returns(
            {
              cidr: String,
              description: String,
              direction: HubspotSDK::Meta::IPRange::Direction::TaggedSymbol,
              service: HubspotSDK::Meta::IPRange::Service::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The direction of the IP traffic, which can be INGRESS or EGRESS.
        module Direction
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Meta::IPRange::Direction) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EGRESS =
            T.let(:EGRESS, HubspotSDK::Meta::IPRange::Direction::TaggedSymbol)
          INGRESS =
            T.let(:INGRESS, HubspotSDK::Meta::IPRange::Direction::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Meta::IPRange::Direction::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # The service associated with the IP range, such as EMAIL, API, DNS, or
        # WEB_SCRAPING.
        module Service
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Meta::IPRange::Service) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API = T.let(:API, HubspotSDK::Meta::IPRange::Service::TaggedSymbol)
          DNS = T.let(:DNS, HubspotSDK::Meta::IPRange::Service::TaggedSymbol)
          EMAIL =
            T.let(:EMAIL, HubspotSDK::Meta::IPRange::Service::TaggedSymbol)
          WEB_SCRAPING =
            T.let(
              :WEB_SCRAPING,
              HubspotSDK::Meta::IPRange::Service::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Meta::IPRange::Service::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
