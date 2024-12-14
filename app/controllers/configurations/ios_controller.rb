module Configurations
  class IosController < ApplicationController
    def v1
      render json: {
        settings: {},
        rules: [
          {
            patterns: [
              ".*"
            ],
            properties: {
              context: "default",
              pull_to_refresh_enabled: true
            }
          },
          {
            patterns: [
              "/new$"
            ],
            properties: {
              context: "modal", 
              pull_to_refresh_enabled: false
            }
          },
          {
            patterns: [
              "/pages/me$"
            ],
            properties: {
              context: "default",
              presentation: "replace",
              hide_navbar: true,
              hide_tabs: true
            }
          }
        ]
      }
    end
  end
end
