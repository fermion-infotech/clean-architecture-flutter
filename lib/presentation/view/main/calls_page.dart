import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/calls_response.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/viewmodel/main/main_3_view_model.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  List<Calls> calls = [];

  @override
  void initState() {
    callAndListenToCallsGetApi();
    super.initState();
  }

  void callAndListenToCallsGetApi() {
    context.read<CallsCubit>().getCalls();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CallsCubit,List<Calls>>(builder: (context,calls){
      print("Calls are :$calls");
      if (calls.isNotEmpty) {
        return ListView.builder(
          itemCount: calls.length,
          itemBuilder: (context, index) {
            final item = calls[index];
            return ListTile(
              title: Text(item.name!),
              subtitle: const Text("1 hour ago"),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(27.5),
                child: CachedNetworkImage(
                  width: 45,
                  height: 45,
                  imageUrl: "https://picsum.photos/id/237/200/300",
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }
      return Container();
    });

  }
}
