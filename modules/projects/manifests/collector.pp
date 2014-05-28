class projects::collector {

  boxen::project { 'collector':
    ruby   => '2.0.0',
    dotenv => true,
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/collector'
  }
}
