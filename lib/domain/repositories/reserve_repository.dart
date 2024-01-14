abstract class ReserveRepositoryInterface {
  int createReserve();
  void updateReserve(int reserve);
  void cancelReserve(int reserve);
  void getReservesList();
}
