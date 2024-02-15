import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/viewmodel/main/main_view_model.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage>
    with AutomaticKeepAliveClientMixin {
  final MainViewModel _mainViewModel = getIt<MainViewModel>();

  @override
  void initState() {
    _mainViewModel.getChats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider(
      create: (_) => _mainViewModel,
      child: Consumer<MainViewModel>(
        builder: (context, model, _) {
          print("Chats are : ${model.chats}");

          if (model.chats!.isNotEmpty) {
            return ListView.builder(
              itemCount: model.chats!.length,
              itemBuilder: (context, index) {
                final item = model.chats![index];
                return ListTile(
                  title: Text(item.name!),
                  subtitle: Text(item.recentMessage!),
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
        },
      ),
    );
  }

  @override
  // This will keep the state alive
  bool get wantKeepAlive => true;
}
