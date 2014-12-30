class projects::mmsre {

  boxen::project { 'mmsre':
    ruby   => '2.1.2',
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/mmsre'
  }
}
