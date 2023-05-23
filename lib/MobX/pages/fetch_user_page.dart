import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/store/fetch_user/fetch_user_store.dart';

class FetchUserPage extends StatelessWidget {
  FetchUserPage({Key? key}) : super(key: key);

  final FetchUser usersList = FetchUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Fetch Users"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // usersList.changeNameAtIndex(index: 1, newName: 'Ervin 1');
          usersList.userListFuture.value?[1].name = 'Yash';
        },
      ),
      body: Observer(
        builder: (_) {
          // if (usersList.getUser2.status == FutureStatus.fulfilled) {
          if (usersList.userListFuture.status == FutureStatus.fulfilled) {
            return RefreshIndicator(
              onRefresh: usersList.fetchUser,
              child: ListView.separated(
                itemCount: usersList.userListFuture.value?.length ?? 0,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(
                    usersList.userListFuture.value?[index].name ?? '',
                  ),
                  subtitle: Text(
                    usersList.userListFuture.value?[index].email ?? '',
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
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
              ),
            );
          } else if (usersList.userListFuture.status == FutureStatus.rejected) {
            return const Center(
              child: Text(
                'Error 404!',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
