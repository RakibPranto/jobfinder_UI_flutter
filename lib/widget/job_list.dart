import 'package:jobfinder/model/job.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder/widget/job_details.dart';
import 'package:jobfinder/widget/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.22,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () => showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => JobDetails(jobList[index])),
                  child: JobItem(jobList[index]));
            },
            separatorBuilder: (_, index) {
              return const SizedBox(
                width: 6.8,
              );
            },
            itemCount: jobList.length),
      ),
    );
  }
}
