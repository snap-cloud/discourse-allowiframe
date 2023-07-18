# name: allowiframe
# about: Changes X-Frame-Options so the site can be embedded
# version: 1.1
# authors: bex-team, riking,

after_initialize do
  # Directly modify the discourse rails defaults
  # Change the default headers to disable browsers' flawed legacy XSS protection.
  Rails.application.config.action_dispatch.default_headers = {
    # "X-Frame-Options" => "SAMEORIGIN",
    "X-XSS-Protection" => "0",
    "X-Content-Type-Options" => "nosniff",
    "X-Download-Options" => "noopen",
    "X-Permitted-Cross-Domain-Policies" => "none",
    "Referrer-Policy" => "strict-origin-when-cross-origin",
  }

end
