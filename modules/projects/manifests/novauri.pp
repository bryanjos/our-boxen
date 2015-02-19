class projects::novauri {
  boxen::project { 'novauri':
    ruby   => '2.1.2',
    postgresql  => true,
    nginx  => true,
    source => 'revelrylabs/novauri'
  }
}
