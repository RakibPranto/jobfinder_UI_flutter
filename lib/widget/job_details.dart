import 'package:jobfinder/model/job.dart';
import 'package:flutter/material.dart';

class JobDetails extends StatelessWidget {
  final Job _job;
  const JobDetails(this._job);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.76,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 6,
              width: 75,
              decoration: const BoxDecoration(color: Colors.black12),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      _job.logoUrl,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                _job.company,
                style: const TextStyle(color: Colors.black87, fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: const [
                  Icon(
                    Icons.bookmark_outline_outlined,
                    color: Color(0xff44b1b8),
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            _job.title,
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _job.location,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.query_builder_outlined,
                    color: Colors.amber,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _job.time,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Text(
            "Requirements",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1),
          ),
          const SizedBox(
            height: 20,
          ),
          //spreadoperator
          ..._job.req
              .map((e) => Container(
                    child: Column(
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          const Positioned(
                            top: 3,
                            child: Icon(
                              Icons.circle,
                              color: Colors.black,
                              size: 6,
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 330),
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      height: 1.04),
                                ),
                              )
                            ],
                          ),
                        ]),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ))
              .toList(),
          const Spacer(),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xff44b1b8),
                      borderRadius: BorderRadius.circular(28)),
                  child: const Center(
                      child: Text(
                    "Apply Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
