import 'package:bus_tracking_task/utils/tools.dart';
import 'package:flutter/material.dart';

class TripDetails extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;

  const TripDetails({Key? key, required this.startDate, required this.endDate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Distance'),
                const Text('26 km'),
                Text('Trip taken on ${startDate.month}'
                    '/${startDate.day}'
                    '/${startDate.year}')
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text('Travel Time: '),
                    Text(endDate.difference(startDate).inMinutes.toString() +
                        ' min')
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.watch),
                        Text('${startDate.hour}:${startDate.minute}')
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.watch),
                        Text('${endDate.hour}:${endDate.minute}')
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
        _FromTraps(startDate: startDate),
        _ToTraps(endDate: endDate)
      ],
    );
  }
}

class _FromTraps extends StatelessWidget {
  final DateTime startDate;
  final String? tripSource;

  const _FromTraps({Key? key, required this.startDate, this.tripSource})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_upward),
        Column(
          children: [
            Text(
              'From ${tripSource ?? '...'}',
              overflow: TextOverflow.ellipsis,
            ),
            Text(Tools.monthNumberToString(startDate.month) +
                ' ${startDate.day}, ${startDate.hour}:${startDate.minute}')
          ],
        ),
        OutlinedButton(
            onPressed: null,
            child: Row(
              children: [
                const Icon(Icons.alarm),
                Text('Set Alarm'.toUpperCase())
              ],
            ))
      ],
    );
  }
}

class _ToTraps extends StatelessWidget {
  final DateTime endDate;
  final String? tripDestination;

  const _ToTraps({Key? key, required this.endDate, this.tripDestination})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.arrow_downward),
        Column(
          children: [
            Text(
              'To ${tripDestination ?? '...'}',
              overflow: TextOverflow.ellipsis,
            ),
            Text(Tools.monthNumberToString(endDate.month) +
                ' ${endDate.day}, ${endDate.hour}:${endDate.minute}')
          ],
        ),
        OutlinedButton(
            onPressed: null,
            child: Row(
              children: [
                const Icon(Icons.payment),
                Text('Pay online'.toUpperCase())
              ],
            ))
      ],
    );
  }
}
