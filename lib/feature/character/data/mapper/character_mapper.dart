import 'package:rick_and_morty_app/feature/character/data/dto/character_dto_export.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character_entity_export.dart';

Character mapCharacter(CharacterDto characterDto) {
  return Character(
    id: characterDto.id,
    name: characterDto.name,
    status: _mapCharacterStatus(characterDto.status),
    species: characterDto.species,
    type: characterDto.type,
    gender: _mapCharacterGender(characterDto.gender),
    origin: _mapOrigin(characterDto.origin),
    location: _mapLocation(characterDto.location),
    image: characterDto.image,
    episode: characterDto.episode,
    url: characterDto.url,
    created: characterDto.created,
  );
}

CharacterStatus _mapCharacterStatus(CharacterStatusDto statusDto) {
  switch (statusDto) {
    case CharacterStatusDto.alive:
      return CharacterStatus.alive;
    case CharacterStatusDto.dead:
      return CharacterStatus.dead;
    default:
      return CharacterStatus.unknown;
  }
}

CharacterGender _mapCharacterGender(CharacterGenderDto genderDto) {
  switch (genderDto) {
    case CharacterGenderDto.female:
      return CharacterGender.female;
    case CharacterGenderDto.male:
      return CharacterGender.male;
    case CharacterGenderDto.genderless:
      return CharacterGender.genderless;
    default:
      return CharacterGender.unknown;
  }
}

Origin _mapOrigin(OriginDto originDto) {
  return Origin(
    name: originDto.name,
    url: originDto.url,
  );
}

Location _mapLocation(LocationDto locationDto) {
  return Location(
    name: locationDto.name,
    url: locationDto.url,
  );
}
