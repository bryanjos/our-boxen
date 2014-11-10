class projects::weblinc_dummy_app {

  boxen::project { 'weblinc-dummy-app':
    ruby => '2.0.0-p353',
    dotenv => true,
    nginx => true,
    elasticsearch => true,
    source => 'git@git.tools.weblinc.com:weblinc-dummy-app.git'
  }

  include mongodb
}
