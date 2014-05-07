class projects::maritant {
  include phantomjs

  boxen::project { 'maritant':
    ruby   => '2.0.0',
    dotenv => true,
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/maritant'
  }
}
