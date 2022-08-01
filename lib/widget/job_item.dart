import 'package:flutter/material.dart';
import 'package:jobfinder/model/job.dart';

class JobItem extends StatelessWidget {
  final Job _jobItem;
  const JobItem(this._jobItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.050,
                  width: MediaQuery.of(context).size.height * 0.050,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      _jobItem.logoUrl,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                _jobItem.company,
                style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_outline_outlined,
                color: Color(0xff44b1b8),
                size: 30,
              )
            ],
          ),
          Text(
            _jobItem.title,
            style: const TextStyle(
                color: Colors.black87,
                height: 0.5,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.yellow,
                size: 32,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                _jobItem.location,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
