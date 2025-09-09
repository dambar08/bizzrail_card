# RailsSettings Model
class Setting < RailsSettings::Base
  cache_prefix { "v1" }

  HEX_COLOR_REGEX = /\A#(\h{6}|\h{3})\z/

  field :default_font, type: :string, default: "sans_serif"
  field :host, type: :string, default: (ENV["OMNIAUTH_GOOGLE_CLIENT_ID"] || "http://localhost:3000"), readonly: true
  field :default_locale, default: "en", type: :string

  field :primary_brand_color_hex, type: :string, default: "#3b49df", validates: {
    format: {
      with: HEX_COLOR_REGEX,
      message: proc { I18n.t("models.app_config.color_hex.message") }
    },
    color_contrast: true
  }
  field :accent_background_color_hex, type: :string, default: nil, validates: {
    format: {
      with: HEX_COLOR_REGEX,
      message: proc { I18n.t("models.app_config.color_hex.message") }
    },
    color_contrast: true
  }
end
