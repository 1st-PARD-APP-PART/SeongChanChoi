import 'package:flutter/material.dart';
import 'package:provider_classwork_choiseongchang/main.dart';

/// Bucket 담당
class BucketService extends ChangeNotifier {
  List<Bucket> bucketList = [
    Bucket('잠자기', false),
  ];

  void createBucket(String job) {
    bucketList.add(Bucket(job, false));
    notifyListeners();
  }

  void updateBucket(Bucket bucket, int index) {
    bucketList[index] = bucket;
    notifyListeners();
  }

  void deleteBucket(int index) {
    bucketList.removeAt(index);
    notifyListeners();
  }
}
