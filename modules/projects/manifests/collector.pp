class projects::collector {

  boxen::project { 'collector':
    ruby   => '2.0.0',
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/collector'
  }
}
