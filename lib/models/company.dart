class Company {

  final String _tradeCodeName = 'trade_code';
  final String _dateName = 'date';
  final String _openName = 'open';
  final String _closeName = 'close';
  final String _highName = 'high';
  final String _volumeName = 'volume';

  String tradeCode;
  DateTime date;
  double open;
  double close;
  double high;
  int volume;

  Company.fromMap(Map<dynamic, dynamic> map) {
    tradeCode = map[_tradeCodeName];
    open = double.parse(map[_openName]);
    close = double.parse(map[_closeName]);
    high = double.parse(map[_highName]);
    volume = int.parse(map[_volumeName].replaceAll(',',''));
    List<String> dp = map[_dateName].split('-');
    date = new DateTime(int.parse(dp[0]), int.parse(dp[1]), int.parse(dp[2]));
  }

  Map<String,dynamic> toMap(){
    return {
      _tradeCodeName: tradeCode,
      _openName: open,
      _closeName: close,
      _highName: high,
      _volumeName: volume,
      _dateName: date
    };
  }
}
