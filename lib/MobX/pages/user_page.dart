import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/store/user/user_store.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  final UserStore userStore = UserStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch Users"),
      ),
      body: Observer(
        builder: (_) {
          final value = userStore.userListFuture.status;
          switch (value) {
            case FutureStatus.fulfilled:
              return RefreshIndicator(
                onRefresh: userStore.fetchUser,
                child: ListView.separated(
                  itemCount: userStore.userListFuture.value?.length ?? 0,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (_, index) {
                    final userModel = userStore.userListFuture.value;
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(
                        userModel?[index].name ?? ' ',
                      ),
                      subtitle: Text(
                        userModel?[index].email ?? ' ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      tileColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 15,
                  ),
                ),
              );
            case FutureStatus.rejected:
              return const Center(
                child: Text(
                  'Error 404!',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            case FutureStatus.pending:
              return const Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
