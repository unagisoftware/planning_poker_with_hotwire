// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import { Turbo } from "@hotwired/turbo-rails"
import { Turbo } from '@hotwired/turbo-rails'
import "controllers"

import TurboPower from "turbo_power"
TurboPower.initialize(Turbo.StreamActions)

// Turbo.StreamActions.console_log = function() {
//   const message = this.getAttribute("message")
//   console.log(message)
// }import "@hotwired/turbo-rails"
