import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tager/view/new_client/new_client.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.cyan.shade700,
        //   onPressed: () {
        //     showModalBottomSheet(
        //       isScrollControlled: true,
        //       context: context,
        //       builder: (context) {
        //         return Directionality(
        //           textDirection: TextDirection.rtl,
        //           child: Form(
        //             key: newClient,
        //             child: Container(
        //               // height: 650,
        //               width: MediaQuery.sizeOf(context).width,
        //               padding: const EdgeInsets.all(20),
        //               child: SingleChildScrollView(
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.end,
        //                   children: [
        //                     const Gap(50),
        //                     const Text(
        //                       "اسم العميل",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     const Gap(5),
        //                     textFromFieldcustom(
        //                         hight: 13,
        //                         rtl: true,
        //                         width: MediaQuery.sizeOf(context).width - 22,
        //                         controller: nameClient,
        //                         text: "اسم العميل"),
        //                     const Gap(18),
        //                     const Text(
        //                       "رقم هاتف",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     const Gap(5),
        //                     textFromFieldcustom(
        //                         hight: 13,
        //                         rtl: true,
        //                         width: MediaQuery.sizeOf(context).width - 22,
        //                         controller: phoneClient,
        //                         text: "01xxxxxxxxx",
        //                         keyboardType: TextInputType.phone),
        //                     const Gap(18),
        //                     const Text(
        //                       "المدينة",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     const Gap(5),
        //                     textFromFieldcustom(
        //                         hight: 13,
        //                         rtl: true,
        //                         width: MediaQuery.sizeOf(context).width - 22,
        //                         controller: cityClient,
        //                         text: "المدينة"),
        //                     const Gap(18),
        //                     const Text(
        //                       "العنوان",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     const Gap(5),
        //                     textFromFieldcustom(
        //                         hight: 13,
        //                         rtl: true,
        //                         width: MediaQuery.sizeOf(context).width - 22,
        //                         controller: addClient,
        //                         text: "الشارع + المنطقة"),
        //                     const Gap(18),
        //                     const Text(
        //                       "معلومات اضافة",
        //                       style: TextStyle(fontSize: 12),
        //                     ),
        //                     const Gap(5),
        //                     textFromFieldcustom(
        //                         hight: 13,
        //                         rtl: true,
        //                         maxLines: 4,
        //                         width: MediaQuery.sizeOf(context).width - 22,
        //                         controller: infoClient,
        //                         text: "ملاحظات"),
        //                     Container(
        //                       width: MediaQuery.sizeOf(context).width - 25,
        //                       margin: const EdgeInsets.symmetric(vertical: 15),
        //                       decoration: BoxDecoration(
        //                           color: Colors.amber,
        //                           borderRadius: BorderRadius.circular(15)),
        //                       child: MaterialButton(
        //                         onPressed: () {
        //                           print(newClient.currentState!.validate());
        //                           if (newClient.currentState!.validate()) {
        //                             Get.back();
        //                           }
        //                         },
        //                         child: const Center(
        //                             child: Text(
        //                           "اضافة عميل جديد",
        //                           style: TextStyle(color: Colors.white),
        //                         )),
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ),
        //         );
        //       },
        //     );
        //   },
        //   child: const Icon(
        //     Icons.add,
        //     size: 27,
        //   ),
        // ),
        body: SafeArea(
            child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/icons/user.png",
                  height: 35,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    "العملاء",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.to(const NewClient(
                      type: "add",
                    ));
                  },
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    size: 28,
                    color: Colors.deepOrange[800],
                  ),
                ),
              ],
            ),
            const Gap(40),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Get.to(const NewClient(
                        type: "edit",
                      ));
                    },
                    child: Container(
                      height: 110,
                      margin:
                          const EdgeInsets.only(top: 10, left: 15, right: 15),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.green[800],
                              ),
                              const Gap(10),
                              Text(
                                "احمد محمد",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.blue[700],
                                  ),
                                  const Gap(10),
                                  Text(
                                    "201012345678+",
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "Mansoura, Egypt",
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Gap(3),
                                  const Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.deepOrange,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
