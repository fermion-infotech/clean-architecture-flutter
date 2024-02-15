import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/viewmodel/main/main_2_view_model.dart';

import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

/// There are manu ways to implement Riverpod. Below is one of the way to use it.
/// I've used structure similar to provider so that there's not much confusion.

/// Below class uses ConsumerStatefulWidget instead of StatefulWidget to get the state providers
/// and notifiers
class StatusPage extends ConsumerStatefulWidget {
  const StatusPage({super.key});

  @override
  ConsumerState<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends ConsumerState<StatusPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();

    /// Below is the way to trigger the method in viewmodel
    ref.read(Main2ViewModel.status.notifier).getStatus();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    /// Below is the way we access the change, whenever there's a change this will get triggered,
    /// as riverpod is reactive.
    var statuses = ref.watch(Main2ViewModel.status);
    print("Statuses are : $statuses");
    if (statuses.isNotEmpty) {
      return ListView.builder(
        itemCount: statuses.length,
        itemBuilder: (context, index) {
          final item = statuses[index];
          return ListTile(
            title: Text(item.name!),
            subtitle: const Text("10 minutes ago"),
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
  }

  @override
  bool get wantKeepAlive => true;
}
