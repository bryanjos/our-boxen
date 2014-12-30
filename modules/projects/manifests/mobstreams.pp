class projects::mobstreams {

  boxen::project { 'mobstreams':
    ruby   => '2.0.0',
    postgresql  => true,
    nginx  => true,
    source => 'revelrylabs/mobstreams'
  }
}
