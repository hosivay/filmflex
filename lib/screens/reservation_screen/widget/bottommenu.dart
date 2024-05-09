


  import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Column bottomMenu_reserv(BuildContext context) {
    return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width / 3.2,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300),
                      child: const Center(
                          child: Text(
                        'TAKEN',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 3.2,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.shade300.withOpacity(0.4)),
                      child: const Center(
                          child: Text(
                        'AVAILABLE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width / 3.2,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.orange.shade400),
                      child: const Center(
                          child: Text(
                        'SELECTED',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 120,
                      color: Colors.orange.shade400,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "CHECKOUT",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Text(
                            "2 Ticket - \$20",
                            style:
                                TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            );
  }