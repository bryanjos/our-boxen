class projects::onepagesale {

  boxen::project { 'onepagesale':
    ruby => '2.0.0',
    postgresql => true,
    nginx => true,
    source => 'revelrylabs/onepagesale'
  }
}
