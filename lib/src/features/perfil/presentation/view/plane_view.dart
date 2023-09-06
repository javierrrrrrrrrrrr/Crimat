import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/profile/subscriptions_model.dart';
import '../../../../shared/widgets/card_sking.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../historial/presentation/view/widget/details_card.dart';
import '../../perfil_home.dart';
import '../bloc/profile_bloc.dart';

class PlanesView extends StatelessWidget {
  const PlanesView({Key? key}) : super(key: key);

  static const String name = 'planes';

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => Container(),
            buySubscriptionsCompleted: () => profilebloc
                .add(ProfileEvent.buySubscriptionsStripe(context: context)),
            buySubscriptionsStripeCompleted: () {
              context.pop;
              context.goNamed(ProfileView.name);
            });
      },
      builder: (context, state) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => CustomPlaneDataColum(data: profilebloc.sublist!),
              getSubscriptionsType: (data) => CustomPlaneDataColum(data: data),
              loading: () => Center(
                child: SpinKitFadingCircle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class CustomPlaneDataColum extends StatelessWidget {
  const CustomPlaneDataColum({
    super.key,
    required this.data,
  });

  final List<SubscriptionsModel> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.w,
        ),
        Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(Icons.arrow_back)),
            SizedBox(
              width: 135.w,
            ),
            const Text('Planes')
          ],
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomSubTypeRow(data: data[index], selectedindex: index),
                  ],
                );
              }),
        ),
      ],
    );
  }
}

class CustomSubTypeRow extends StatelessWidget {
  const CustomSubTypeRow({
    super.key,
    required this.data,
    required this.selectedindex,
  });

  final SubscriptionsModel data;
  final int selectedindex;
  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Stack(
      children: [
        CardSking(
          cardwidth: 375.w,
          cardheight: 140.h,
        ),
        Container(
          height: 140.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.sp),
                topLeft: Radius.circular(8.sp)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${data.descuento}%',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              Text(
                "Descuento",
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ],
          ),
        ),
        Positioned(
          left: 105.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Plan ${data.tipoSuscripcion}',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Días de anticipación:${data.dias}',
                style: TextStyle(fontSize: 11.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Cantidad de salones:${data.cantSalones}',
                style: TextStyle(fontSize: 11.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Fecha de Fecha de expiración:',
                style: TextStyle(fontSize: 11.sp),
              ),
              Text(
                '7/30/2023',
                style: TextStyle(fontSize: 11.sp),
              ),
            ],
          ),
        ),
        Positioned(
          top: 10.h,
          right: 15.w,
          child: Text(
            '${calcularValor(selectedindex, context, data.valor)} USD',
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
        Positioned(
          top: 35.h,
          right: 15.w,
          child: Text(
            'Numero de meses',
            style: TextStyle(fontSize: 11.sp),
          ),
        ),
        Positioned(
          bottom: 45.h,
          right: 1.w,
          child: CustomCantidad(selectedindex: selectedindex),
        ),
        Positioned(
          bottom: 18.h,
          right: 10.w,
          child: CusotmButtom(
              onPressed: () {
                profilebloc.add(ProfileEvent.buySubscriptions(
                    id: data.id, selectedindex: selectedindex));
              },
              width: 100.w,
              height: 30.h,
              name: "Comprar",
              ispraimary: true),
        ),
      ],
    );
  }

  double calcularValor(
      int selectedindex, BuildContext context, String preciobase) {
    final profilebloc = context.read<ProfileBloc>();
    double valor = 0;
    valor = profilebloc.subMonth[selectedindex] * double.parse(preciobase);

    return valor;
  }
}

class CustomCantidad extends StatelessWidget {
  const CustomCantidad({
    super.key,
    required this.selectedindex,
  });

  final int selectedindex;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Row(
      children: [
        CusotmButtomCart(
          icon: Icons.remove,
          onPressed: () {
            profilebloc
                .add(ProfileEvent.subMonth(selectedIndex: selectedindex));
          },
        ),
        BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Text('1'),
              updatedQuantityMonth: (cantidad) =>
                  Text(cantidad[selectedindex].toString()),
            );
            //  return Text('c'));
          },
        ),
        CusotmButtomCart(
            icon: Icons.add,
            onPressed: () {
              profilebloc
                  .add(ProfileEvent.addMonth(selectedIndex: selectedindex));
            }),
      ],
    );
  }
}
