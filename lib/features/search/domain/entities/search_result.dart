import 'package:ibiapabaapp/features/cities/domain/entities/city.dart';
import 'package:ibiapabaapp/features/businesses/domain/entities/business.dart';
import 'package:ibiapabaapp/features/events/domain/entities/event.dart';

sealed class SearchResult {
  const SearchResult();
}

class CitySearchResult extends SearchResult {
  final City city;
  const CitySearchResult(this.city);
}

class BusinessSearchResult extends SearchResult {
  final Business business;
  const BusinessSearchResult(this.business);
}

class EventSearchResult extends SearchResult {
  final Event event;
  const EventSearchResult(this.event);
}
