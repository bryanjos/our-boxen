class projects::werkly {

  boxen::project { 'werkly':
    ruby   => '2.0.0',
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/werkly'
  }
}
