import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/chat_models.dart';

part 'icebreakers_controller.g.dart';

/// Static fallback icebreakers — used when the BE call fails or while it
/// loads. Round 8 strategist copy. Same set used as a fast prefill so the
/// chat empty state never blocks on the network.
const List<Icebreaker> _fallbackIcebreakers = [
  Icebreaker(
    id: 'peaceful_moment',
    text: '요즘 하루 중 가장 평온해지는 순간이 언제예요?',
  ),
  Icebreaker(
    id: 'comfort_food',
    text: '비 오는 날 생각나는 음식이 있나요?',
  ),
  Icebreaker(
    id: 'small_joy',
    text: '요즘 작지만 기쁘게 느껴진 일이 있다면요?',
  ),
  Icebreaker(
    id: 'weekend_walk',
    text: '주말에 걷기 좋아하는 동네가 있으신가요?',
  ),
  Icebreaker(
    id: 'book_or_movie',
    text: '최근에 마음에 남은 책이나 영화가 있었어요?',
  ),
  Icebreaker(
    id: 'morning_routine',
    text: '하루를 시작할 때 꼭 하는 일이 있다면요?',
  ),
  Icebreaker(
    id: 'travel_memory',
    text: '다시 가보고 싶은 여행지가 있으신가요?',
  ),
  Icebreaker(
    id: 'season_favorite',
    text: '사계절 중 가장 마음이 가는 계절은 언제예요?',
  ),
];

/// Returns the 8 static icebreakers. We try to fetch the BE list once per
/// session, falling back to the local copy if anything goes wrong (the BE
/// returns the same set today).
@Riverpod(keepAlive: true)
Future<List<Icebreaker>> icebreakers(Ref ref) async {
  // For now we ship the local copy — saves a round trip on the very first
  // empty chat. Once we ship a BE-managed pool we'll switch to a fetch.
  return _fallbackIcebreakers;
}
