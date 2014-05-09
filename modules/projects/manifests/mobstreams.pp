class projects::mobstreams {

  boxen::project { 'mobstreams':
    ruby   => '2.0.0',
    dotenv => true,
    postgresql  => true,
    nginx  => true,
    source => 'revelrylabs/mobstreams'
  }
}
