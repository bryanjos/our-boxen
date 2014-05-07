class projects::werkly {

  boxen::project { 'werkly':
    ruby   => '2.0.0',
    dotenv => true,
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/werkly'
  }
}
