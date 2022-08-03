class DelayUtil {
  static void executeWithMinumumDelay({
    required DateTime eventStartTime,
    required void Function() functionToExecute,
    int minimumLoadingDelay = 750,
  }) {
    var executionTime =
        DateTime.now().difference(eventStartTime).inMilliseconds;

    var executionDelay = executionTime < minimumLoadingDelay
        ? minimumLoadingDelay - executionTime
        : 0;

    Future.delayed(
      Duration(milliseconds: executionDelay),
      functionToExecute,
    );
  }
}
