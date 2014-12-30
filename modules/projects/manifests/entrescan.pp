class projects::entrescan {

  boxen::project { 'entrescan':
    ruby   => '2.0.0',
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/entrescan'
  }
}
