class Interest {
  Interest({required this.id, required this.name});

  final String id;
  final String name;
}

class ProfileInterests {
  final List<Interest> businesses;
  final List<Interest> events;

  const ProfileInterests({this.businesses = const [], this.events = const []});

  List<String> get interestsIdsList => [
    ...businesses.map((e) => e.id),
    ...events.map((e) => e.id),
  ];

  List<String> get interestsNamesList => [
    ...businesses.map((e) => e.name),
    ...events.map((e) => e.name),
  ];

  Set<String> get interestsIdsSet => {
    ...businesses.map((e) => e.name),
    ...events.map((e) => e.name),
  };

  ProfileInterests copyWith({
    List<Interest>? businesses,
    List<Interest>? events,
  }) {
    return ProfileInterests(
      businesses: businesses ?? this.businesses,
      events: events ?? this.events,
    );
  }
}
