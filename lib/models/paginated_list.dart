class PaginatedList<T> {
  final List<T> currentItems;
  final int totalItems;

  PaginatedList({required this.currentItems, required this.totalItems});

  factory PaginatedList.empty() {
    return PaginatedList(currentItems: [], totalItems: 0);
  }
}
