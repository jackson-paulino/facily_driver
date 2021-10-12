import 'package:facily_driver/blocs/home_bloc.dart';
import 'package:facily_driver/data/repositories/driver_repository_interface.dart';
import 'package:facily_driver/shared/app_colors.dart';
import 'package:facily_driver/shared/app_locator.dart';
import 'package:facily_driver/shared/app_style_text.dart';
import 'package:facily_driver/ui/widgets/custom_button_elevated.dart';
import 'package:facily_driver/ui/widgets/custom_container_widget.dart';
import 'package:facily_driver/ui/widgets/custom_loading_progress.dart';
import 'package:facily_driver/ui/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) =>
            HomeCubit(getIt.get<DriverRepositoryInterface>())..getUser(),
        child: const HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text('Facily Driver')),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              context.read<HomeCubit>().getUser();
            },
            icon: Transform.rotate(
              angle: 45,
              child: const Icon(Icons.autorenew_rounded),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: LayoutBuilder(
          builder: (context, cons) {
            return BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is LoadingHomeState) {
                  return const CustomLoadingProgress();
                } else if (state is FinishedHomeState) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Olá, ${state.user.dataModel!.firstName} ${state.user.dataModel!.lastName}!',
                            style: AppStyleText.topTitlePage),
                        const SizedBox(height: 6),
                        const Text('Tudo bem?',
                            style: AppStyleText.topSubtitlePage),
                        const SizedBox(height: 23),
                        state.dependency.boxes == 0 &&
                                state.dependency.orders.isEmpty
                            ? _buildTruckloadReleased(size)
                            : const SizedBox(),
                        const SizedBox(height: 23),
                        state.truckload.total > 0
                            ? _buildOptionsLoad(size)
                            : const SizedBox(),
                        const SizedBox(height: 23),
                        _buildRecognition(size, state),
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            );
          },
        ),
      ),
    );
  }

  CustomContainerWidget _buildRecognition(Size size, FinishedHomeState state) {
    return CustomContainerWidget(
      width: size.width,
      color: AppColors.appBarColor,
      rowColumn: true,
      children: [
        _buildExpanded(
          [
            const Text('Nº de identificação:',
                style: AppStyleText.cardIdentityTitlePage),
            const SizedBox(height: 10),
            Text(state.user.id, style: AppStyleText.cardIdentityId),
            const SizedBox(height: 10),
            const Text(
                'Utilize o QRCode sempre que for necessário confirmar sua identificação',
                style: AppStyleText.cardIdentityMenssage),
          ],
        ),
        const SizedBox(width: 12),
        _buildExpanded(
          [CustomNetworkImage(idUser: state.user.id)],
        ),
      ],
    );
  }

  CustomContainerWidget _buildOptionsLoad(Size size) {
    return CustomContainerWidget(
      width: size.width,
      color: AppColors.appBarColor,
      children: const [
        Text('O que você deseja?', style: AppStyleText.cardOptionTitlePage),
        SizedBox(height: 5),
        Text('Selecione a opção abaixo',
            style: AppStyleText.cardOptionSubtitlePage),
        SizedBox(height: 25),
        CustomButtonElevated(
          text: 'Verificar carregamentos',
          loading: false,
          //  onPressed: () {},
        ),
        SizedBox(height: 26),
        CustomButtonElevated(
          text: 'Entregar pedidos',
          loading: false,
          //    onPressed: () {},
        ),
        SizedBox(height: 26),
        CustomButtonElevated(
          text: 'Consultar NFe',
          loading: false,
          //    onPressed: () {},
        ),
        SizedBox(height: 25),
      ],
    );
  }

  CustomContainerWidget _buildTruckloadReleased(Size size) {
    return CustomContainerWidget(
      width: size.width,
      color: AppColors.success,
      children: const [
        Text('Carregamento liberado', style: AppStyleText.cardReleaseTitlePage),
        SizedBox(height: 5),
        Text(
            'Dirija-se ao Setor responsável e faça '
            'um novo carregamento',
            style: AppStyleText.cardReleaseSubtitlePage),
      ],
    );
  }

  Expanded _buildExpanded(List<Widget> list) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: list,
      ),
    );
  }
}
